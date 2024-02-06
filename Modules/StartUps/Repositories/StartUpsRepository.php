<?php

namespace Modules\StartUps\Repositories;

use App\Enums\OrderBy;
use Illuminate\Support\Str;
use App\Traits\FileUploadTrait;
use Illuminate\Support\Facades\DB;
use App\Traits\ApiReturnFormatTrait;
use Modules\Services\Entities\Service;
use Modules\Services\Interfaces\ServiceInterface;
use Modules\StartUps\Entities\Startup;
use Modules\StartUps\Interfaces\StartupInterface;

class StartUpsRepository implements StartupInterface
{
    use ApiReturnFormatTrait, FileUploadTrait;

    private $model;

    public function __construct(Startup $startupModel)
    {
        $this->model = $startupModel;
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
            $startup = new $this->model; // create new object of model for store data in database table
            $startup->title = ['en' => $request->title, 'ar' => $request->title_ar];
            $startup->description = ['en' => $request->description, 'ar' => $request->description_ar] ?? '';
            $startup->industry = ['en' => $request->industry, 'ar' => $request->industry_ar] ?? '';
            $startup->mission = ['en' => $request->mission, 'ar' => $request->mission_ar] ?? '';
            $startup->vision = ['en' => $request->vision, 'ar' => $request->vision_ar] ?? '';
            $startup->website = $request->website ?? '';
            $startup->email = $request->email;
            $startup->contact_num = $request->contact_num;

            $startup->founder_name = ['en' => $request->founder_name, 'ar' => $request->founder_name_ar] ?? '';
            $startup->founder_role = ['en' => $request->founder_role, 'ar' => $request->founder_role_ar] ?? '';
            $startup->founder_email = $request->founder_email;
            $startup->founder_linkedin_url = $request->founder_linkedin_url;

            $startup->co_founder_name = ['en' => $request->co_founder_name, 'ar' => $request->co_founder_name_ar] ?? '';
            $startup->co_founder_role = ['en' => $request->co_founder_role, 'ar' => $request->co_founder_role_ar] ?? '';
            $startup->co_founder_email = $request->co_founder_email;
            $startup->co_founder_linkedin_url = $request->co_founder_linkedin_url;

            if ($request->hasFile('image')) {
                $upload = $this->uploadFile($request->image, 'startups/startup', [], '', 'image'); // upload file and resize image 35x35
                if ($upload['status']) {
                    $startup->image_id = $upload['upload_id'];
                } else {
                    return $this->responseWithError($upload['message'], [], 400);
                }
            }

            if ($request->hasFile('founder_image')) {
                $upload = $this->uploadFile($request->founder_image, 'startups/startup', [], '', 'image'); // upload file and resize image 35x35
                if ($upload['status']) {
                    $startup->founder_image_id = $upload['upload_id'];
                } else {
                    return $this->responseWithError($upload['message'], [], 400);
                }
            }

            if ($request->hasFile('co_founder_image')) {
                $upload = $this->uploadFile($request->co_founder_image, 'startups/startup', [], '', 'image'); // upload file and resize image 35x35
                if ($upload['status']) {
                    $startup->co_founder_image_id = $upload['upload_id'];
                } else {
                    return $this->responseWithError($upload['message'], [], 400);
                }
            }

            $startup->created_by = $request->user()->id;

            $startup->save(); // save data in database table
            DB::commit(); // commit database transaction
            return $this->responseWithSuccess(___('alert.Startup created successfully.')); // return success response
        } catch (\Exception $th) {

            DB::rollBack(); // rollback database transaction
            dd($th->getFile(), $th->getLine(), $th->getCode());
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
            $startup = $this->model->find($id);
            if (!$startup) {
                return $this->responseWithError(___('alert.Slider not found.'), [], 400);
            }

            $startup->title = ['en' => $request->title, 'ar' => $request->title_ar];
            $startup->description = ['en' => $request->description, 'ar' => $request->description_ar] ?? '';
            $startup->industry = ['en' => $request->industry, 'ar' => $request->industry_ar] ?? '';
            $startup->mission = ['en' => $request->mission, 'ar' => $request->mission_ar] ?? '';
            $startup->vision = ['en' => $request->vision, 'ar' => $request->vision_ar] ?? '';
            $startup->website = $request->website ?? '';
            $startup->email = $request->email;
            $startup->contact_num = $request->contact_num;

            $startup->founder_name = ['en' => $request->founder_name, 'ar' => $request->founder_name_ar] ?? '';
            $startup->founder_role = ['en' => $request->founder_role, 'ar' => $request->founder_role_ar] ?? '';
            $startup->founder_email = $request->founder_email;
            $startup->founder_linkedin_url = $request->founder_linkedin_url;

            $startup->co_founder_name = ['en' => $request->co_founder_name, 'ar' => $request->co_founder_name_ar] ?? '';
            $startup->co_founder_role = ['en' => $request->co_founder_role, 'ar' => $request->co_founder_role_ar] ?? '';
            $startup->co_founder_email = $request->co_founder_email;
            $startup->co_founder_linkedin_url = $request->co_founder_linkedin_url;

            if ($request->hasFile('image')) {
                $upload = $this->uploadFile($request->image, 'pages/page', [], @$startup->image_id, 'image'); // upload file and resize image 35x35
                if ($upload['status']) {
                    $startup->image_id = $upload['upload_id'];
                } else {
                    return $this->responseWithError($upload['message'], [], 400);
                }
            }

            if ($request->hasFile('founder_image')) {
                $upload = $this->uploadFile($request->founder_image, 'startups/startup', [], '', 'image'); // upload file and resize image 35x35
                if ($upload['status']) {
                    $startup->founder_image_id = $upload['upload_id'];
                } else {
                    return $this->responseWithError($upload['message'], [], 400);
                }
            }

            if ($request->hasFile('co_founder_image')) {
                $upload = $this->uploadFile($request->co_founder_image, 'startups/startup', [], '', 'image'); // upload file and resize image 35x35
                if ($upload['status']) {
                    $startup->co_founder_image_id = $upload['upload_id'];
                } else {
                    return $this->responseWithError($upload['message'], [], 400);
                }
            }

            $startup->save();
            DB::commit();
            return $this->responseWithSuccess(___('alert.Startup updated successfully.'));
        } catch (\Throwable $th) {
            DB::rollBack();
            return $this->responseWithError($th->getMessage(), [], 400);
        }
    }

    public function destroy($id)
    {
        try {
            $startup = $this->model->find($id);

            $upload = $this->deleteFile($startup->image_id, 'delete'); // delete file from storage
            if (!$upload['status']) {
                return $this->responseWithError($upload['message'], [], 400); // return error response
            }

            $startup->delete();

            return $this->responseWithSuccess(___('alert.Startup deleted successfully.')); // return success response
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
