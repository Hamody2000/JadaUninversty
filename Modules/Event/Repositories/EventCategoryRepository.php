<?php

namespace Modules\Event\Repositories;

use Illuminate\Support\Str;
use App\Traits\FileUploadTrait;
use Illuminate\Support\Facades\DB;
use App\Traits\ApiReturnFormatTrait;
use Illuminate\Support\Facades\Cache;
use Modules\Event\Entities\EventCategory;
use Modules\Event\Interfaces\EventCategoryInterface;

class EventCategoryRepository implements EventCategoryInterface
{
    use ApiReturnFormatTrait, FileUploadTrait;

    private $model;

    public function __construct(EventCategory $eventCategoryModel)
    {
        $this->model = $eventCategoryModel;
    }

    public function all()
    {
        try {
            return $this->model->get();
        } catch (\Throwable $th) {
            return false;
        }
    }

    public function tableHeader()
    {

        return [
            ___('common.ID'),
            ___('common.Title'),
            ___('ui_element.status'),
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

    public function getActive()
    {
        try {
            if (Cache::has('event_category')) {
                $questionCategories = Cache::get('event_category');
            } else {
                $questionCategories = $this->model->where('status_id', 1)->get(); // get all home section
                Cache::put('event_category', $questionCategories);
            }
            return $questionCategories;

        } catch (\Throwable $th) {
            return false;
        }

    }

    public function filter($filter = null)
    {
        $model = $this->model;
        if (@$filter) {
            $model = $this->model->where($filter);
        }
        return $model;
    }

    public function store($request)
    {

        if (env('APP_DEMO')) {
            return $this->responseWithError(___('alert.you_can_not_change_in_demo_mode'));
        }

        DB::beginTransaction(); // start database transaction
        try {
            $target = new $this->model; // create new object of model for store data in database table
            $target->title = $request->title;
            $target->slug = Str::slug($request->title) . '-' . Str::random(8);
            $target->status_id = $request->status_id;
            $target->created_by = auth()->id();
            $target->save(); // save data in database table
            DB::commit(); // commit database transaction
            return $this->responseWithSuccess(___('event.Event category created successfully.')); // return success response
        } catch (\Throwable $th) {
            DB::rollBack(); // rollback database transaction
            return $this->responseWithError($th->getMessage(), [], 400); // return error response
        }
    }

    public function show($id)
    {
        try {
            return $this->model->find($id);
        } catch (\Throwable $th) {
            return false;
        }

    }

    public function update($request, $id)
    {
        DB::beginTransaction();
        try {

            if (env('APP_DEMO')) {
                return $this->responseWithError(___('alert.you_can_not_change_in_demo_mode'));
            }

            $target = $this->model->find($id);
            if (!$target) {
                return $this->responseWithError(___('event.Event category not found.'), [], 400);
            }
            $target->title = $request->title;
            if ($request->title != $target->title) {
                $target->slug = Str::slug($request->title) . '-' . Str::random(8);
            }

            $target->status_id = $request->status_id;
            $target->created_by = auth()->id();
            $target->save();
            DB::commit();
            return $this->responseWithSuccess(___('event.Event category updated successfully.'));
        } catch (\Throwable $th) {
            DB::rollBack();
            return $this->responseWithError($th->getMessage(), [], 400);
        }
    }

    public function destroy($id)
    {
        try {

            if (env('APP_DEMO')) {
                return $this->responseWithError(___('alert.you_can_not_change_in_demo_mode'));
            }

            $target = $this->model->find($id);
            $target->delete();
            return $this->responseWithSuccess(___('event.Event category deleted successfully.')); // return success response
        } catch (\Throwable $th) {
            return $this->responseWithError($th->getMessage(), [], 400); // return error response
        }
    }

    public function catArr()
    {
        try {
            return $this->model->where('status_id', 1)->orderBy('id', 'desc')->pluck('title', 'id')->toArray();
        } catch (\Throwable $th) {
            return false;
        }

    }
}
