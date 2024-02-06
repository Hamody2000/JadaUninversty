<?php

namespace Modules\Services\Repositories;

use App\Enums\OrderBy;
use Illuminate\Support\Str;
use App\Traits\FileUploadTrait;
use Illuminate\Support\Facades\DB;
use App\Traits\ApiReturnFormatTrait;
use Modules\Services\Entities\Service;
use Modules\Services\Interfaces\ServiceInterface;

class ServicesRepository implements ServiceInterface
{
    use ApiReturnFormatTrait, FileUploadTrait;

    private $model;

    public function __construct(Service $serviceModel)
    {
        $this->model = $serviceModel;
    }

    public function getAll($request)
    {
        try {
            $data = $this->model->query();

            $data = $this->filter($request, $data);

            $data = $data->orderBy('id', 'desc')->paginate($request->show ?? 10);

            return $data;

        } catch (\Throwable $th) {

            return false;
        }
    }

    public function filter($request, $data)
    {
        if (!empty($request->search)) {
            $search = $request->search;
            $data = $data->where(function ($query) use ($search) {
                $query->orWhere('title->en', 'like', '%' . $search . '%')
                    ->orWhere('title->ar', 'like', '%' . $search . '%');
            });
        }
        return $data;
    }

    public function tableHeader()
    {

        return [
            ___('common.ID'),
            ___('common.Title'),
            ___('common.Description'),
//            ___('common.Slug'),
//            ___('ui_element.status'),
            ___('ui_element.image'),
            ___('ui_element.created_at'),
            ___('ui_element.action'),
        ];
    }

    public function model()
    {
        try {
            return $this->model;

        } catch (\Throwable $th) {

            return false;
        }

    }

    public function store($request)
    {
        DB::beginTransaction(); // start database transaction

        try {

            $service = new $this->model; // create new object of model for store data in database table
            $service->title = [
                'en' => $request->title,
                'ar' => $request->title_ar,
            ];
            $service->description = [
                'en' => $request->description,
                'ar' => $request->description_ar,
            ] ?? '';

            if ($request->hasFile('image')) {
                $upload = $this->uploadFile($request->image, 'pages/page', [], '', 'image'); // upload file and resize image 35x35
                if ($upload['status']) {
                    $service->image_id = $upload['upload_id'];
                } else {
                    return $this->responseWithError($upload['message'], [], 400);
                }
            }

            $service->save(); // save data in database table
            DB::commit(); // commit database transaction
            return $this->responseWithSuccess(___('alert.Service created successfully.')); // return success response
        } catch (\Throwable $th) {

            DB::rollBack(); // rollback database transaction
            return $this->responseWithError($th->getMessage(), [], 400); // return error response
        }
    }

    public function show($id)
    {
        return $this->model->find($id);
    }

    public function update($request, $id)
    {
        DB::beginTransaction();
        try {
            $target = $this->model->find($id);
            if (!$target) {
                return $this->responseWithError(___('alert.Slider not found.'), [], 400);
            }

            $target->title = [
                'ar' => $request->title_ar,
                'en' => $request->title
            ];

            $target->description = [
                'ar' => $request->description_ar,
                'en' => $request->description
            ];

            if ($request->hasFile('image')) {
                $upload = $this->uploadFile($request->image, 'pages/page', [], @$target->image_id, 'image'); // upload file and resize image 35x35
                if ($upload['status']) {
                    $target->image_id = $upload['upload_id'];
                } else {
                    return $this->responseWithError($upload['message'], [], 400);
                }
            }

            $target->save();
            DB::commit();
            return $this->responseWithSuccess(___('alert.Service updated successfully.'));
        } catch (\Throwable $th) {
            DB::rollBack();
            return $this->responseWithError($th->getMessage(), [], 400);
        }
    }

    public function destroy($id)
    {
        try {
            $target = $this->model->find($id);

            $target->delete();

            return $this->responseWithSuccess(___('alert.Service deleted successfully.')); // return success response
        } catch (\Throwable $th) {
            return $this->responseWithError($th->getMessage(), [], 400); // return error response
        }
    }

//Use this function on frontend footer
    public function all()
    {

        try {
            return $this->model->query()->active()->orderBy('id', OrderBy::ASC)->get();

        } catch (\Throwable $th) {

            return false;
        }
    }
    //Use this function on frontend footer
}
