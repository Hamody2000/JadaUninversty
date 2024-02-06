<?php

namespace Modules\ZoomMeeting\Repositories;

use App\Traits\ApiReturnFormatTrait;
use App\Traits\CommonHelperTrait;
use App\Traits\FileUploadTrait;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Modules\ZoomMeeting\Entities\ZoomSetting;
use Modules\ZoomMeeting\Interfaces\ZoomSettingsInterface;

class ZoomSettingsRepository implements ZoomSettingsInterface
{
    use ApiReturnFormatTrait, FileUploadTrait, CommonHelperTrait;

    private $model;

    public function __construct(ZoomSetting $zoomSettingModel)
    {
        $this->model = $zoomSettingModel;
    }

    public function model()
    {
        return $this->model;
    }

    public function zoomUpdate($request)
    {
        DB::beginTransaction(); // start database transaction
        try {
            $setting = $this->model()->updateOrCreate(['user_id' => Auth::id()]);
            $setting->update($request->all());
            DB::commit(); // commit database transaction
            return $this->responseWithSuccess(___('alert.Zoom_setting_updated_successfully.')); // return success response
        } catch (\Throwable $th) {
            DB::rollBack(); // rollback database transaction
            return $this->responseWithError($th->getMessage(), [], 400); // return error response
        }
    }
}
