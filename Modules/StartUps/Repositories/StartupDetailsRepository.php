<?php

namespace Modules\StartUps\Repositories;

use App\Enums\OrderBy;
use Illuminate\Support\Str;
use App\Traits\FileUploadTrait;
use Illuminate\Support\Facades\DB;
use App\Traits\ApiReturnFormatTrait;
use Modules\StartUps\Entities\Startup;
use Modules\StartUps\Interfaces\StartupDetailsInterface;

class StartupDetailsRepository implements StartupDetailsInterface
{
    use ApiReturnFormatTrait, FileUploadTrait;

    private $model;

    public function __construct(Startup $startupModel)
    {
        $this->model = $startupModel;
    }

    public function tableHeader()
    {
        return [
            ___('common.ID'),
            ___('ui_element.image'),
            ___('ui_element.created_at'),
            ___('ui_element.action'),
        ];
    }

    public function membersTableHeader()
    {
        return [
            ___('common.ID'),
            ___('ui_element.name'),
            ___('ui_element.role'),
            ___('ui_element.description'),
            ___('ui_element.image'),
            ___('ui_element.created_at'),
            ___('ui_element.action'),
        ];
    }

    public function updateHighlights($request, $id)
    {
        DB::beginTransaction();
        try {
            $startup = Startup::find($id);
            if (!$startup) {
                return $this->responseWithError(___('alert.Startup not found.'), [], 400);
            }

            $startup->highlights()->updateOrCreate([
                'startup_id' => $id
            ], $request->only('market_size', 'trees_saved', 'compliance_european_standards', 'sales_pipeline', 'profit_margin'));

            $startup->save();
            DB::commit();
            return $this->responseWithSuccess(___('alert.Startup Highlights updated successfully.'));
        } catch (\Throwable $th) {
            DB::rollBack();
            return $this->responseWithError($th->getMessage(), [], 400);
        }
    }

    public function updateProblem($request, $id)
    {
        DB::beginTransaction();
        try {
            $startup = Startup::find($id);
            if (!$startup) {
                return $this->responseWithError(___('alert.Startup not found.'), [], 400);
            }

            $data = [
                'title' => ['en' => $request->title, 'ar' => $request->title_ar],
                'description' => ['en' => $request->description, 'ar' => $request->description_ar],
            ];

            if ($request->hasFile('image')) {
                $upload = $this->uploadFile($request->image, 'startups/startup/problem/', [], '', 'image'); // upload file and resize image 35x35
                if ($upload['status']) {
                    $data['problem_image_id'] = $upload['upload_id'];
                } else {
                    return $this->responseWithError($upload['message'], [], 400);
                }
            }

            $startup->problem()->updateOrCreate([
                'startup_id' => $id
            ], $data);

            $startup->save();
            DB::commit();
            return $this->responseWithSuccess(___('alert.Startup Problem updated successfully.'));
        } catch (\Throwable $th) {
            DB::rollBack();
            return $this->responseWithError($th->getMessage(), [], 400);
        }
    }

    public function updateSolution($request, $id)
    {
        DB::beginTransaction();
        try {
            $startup = Startup::find($id);
            if (!$startup) {
                return $this->responseWithError(___('alert.Startup not found.'), [], 400);
            }

            $data = [
                'title' => ['en' => $request->title, 'ar' => $request->title_ar],
                'description' => ['en' => $request->description, 'ar' => $request->description_ar],
            ];

            if ($request->hasFile('image')) {
                $upload = $this->uploadFile($request->image, 'startups/startup/solution/', [], '', 'image'); // upload file and resize image 35x35
                if ($upload['status']) {
                    $data['solution_image_id'] = $upload['upload_id'];
                } else {
                    return $this->responseWithError($upload['message'], [], 400);
                }
            }

            $startup->solution()->updateOrCreate([
                'startup_id' => $id
            ], $data);

            $startup->save();
            DB::commit();
            return $this->responseWithSuccess(___('alert.Startup Solution updated successfully.'));
        } catch (\Throwable $th) {
            DB::rollBack();
            return $this->responseWithError($th->getMessage(), [], 400);
        }
    }

    public function updateHowItWorks($request, $id)
    {
        DB::beginTransaction();
        try {
            $startup = Startup::find($id);
            if (!$startup) {
                return $this->responseWithError(___('alert.Startup not found.'), [], 400);
            }

            $data = [
                'title' => ['en' => $request->title, 'ar' => $request->title_ar],
                'description' => ['en' => $request->description, 'ar' => $request->description_ar],
            ];

            if ($request->hasFile('image')) {
                $upload = $this->uploadFile($request->image, 'startups/startup/howItWorks/', [], '', 'image'); // upload file and resize image 35x35
                if ($upload['status']) {
                    $data['how_it_works_image_id'] = $upload['upload_id'];
                } else {
                    return $this->responseWithError($upload['message'], [], 400);
                }
            }

            $startup->howItWorks()->updateOrCreate([
                'startup_id' => $id
            ], $data);

            $startup->save();
            DB::commit();
            return $this->responseWithSuccess(___('alert.Startup How It Works updated successfully.'));
        } catch (\Throwable $th) {
            DB::rollBack();
            return $this->responseWithError($th->getMessage(), [], 400);
        }
    }

    public function updateTraction($request, $id)
    {
        DB::beginTransaction();
        try {
            $startup = Startup::find($id);
            if (!$startup) {
                return $this->responseWithError(___('alert.Startup not found.'), [], 400);
            }

            $startup->traction()->updateOrCreate([
                'startup_id' => $id
            ], $request->only('trees_saved', 'current_customers', 'boards_produced', 'revenues'));

            $startup->save();
            DB::commit();
            return $this->responseWithSuccess(___('alert.Startup Tractions updated successfully.'));
        } catch (\Throwable $th) {
            DB::rollBack();
            return $this->responseWithError($th->getMessage(), [], 400);
        }
    }


    // ===================> Start Impact Operations <=================
    public function addImpact($request, $id)
    {
        DB::beginTransaction();
        try {
            $startup = Startup::find($id);
            if (!$startup) {
                return $this->responseWithError(___('alert.Startup not found.'), [], 400);
            }

            $data = [];
            if ($request->hasFile('image')) {
                $upload = $this->uploadFile($request->image, 'startups/startup/impacts/', [], '', 'image'); // upload file and resize image 35x35
                if ($upload['status']) {
                    $data['impact_image_id'] = $upload['upload_id'];
                } else {
                    return $this->responseWithError($upload['message'], [], 400);
                }
            }
            
            $data['startup_id'] = $id;
            $startup->impacts()->create($data);

            DB::commit();
            return $this->responseWithSuccess(___('alert.Startup Impact added successfully.'));
        } catch (\Throwable $th) {
            DB::rollBack();
            return $this->responseWithError($th->getMessage(), [], 400);
        }
    }

    public function updateImpact($request, $id)
    {
        
    }

    public function deleteImpact($startup_id, $id)
    {
        try {
            $startup = Startup::find($startup_id);
            if (!$startup) {
                return $this->responseWithError(___('alert.Startup not found.'), [], 400);
            }

            $impact = $startup->impacts()->find($id);
            if (!$impact) {
                return $this->responseWithError(___('alert.Startup Impact not found.'), [], 400);
            }

            $upload = $this->deleteFile($impact->impact_image_id, 'delete'); // delete file from storage
            if (!$upload['status']) {
                return $this->responseWithError($upload['message'], [], 400); // return error response
            }

            $impact->delete();

            return $this->responseWithSuccess(___('alert.Startup Impact deleted successfully.')); // return success response
        } catch (\Throwable $th) {
            return $this->responseWithError($th->getMessage(), [], 400); // return error response
        }
    }
    // ===================> End Impact Operations <=================

    // ===================> Start Partnerships Operations <=================
    public function addPartnership($request, $id)
    {
        DB::beginTransaction();
        try {
            $startup = Startup::find($id);
            if (!$startup) {
                return $this->responseWithError(___('alert.Startup not found.'), [], 400);
            }

            $data = [];
            if ($request->hasFile('image')) {
                $upload = $this->uploadFile($request->image, 'startups/startup/partnerships/', [], '', 'image'); // upload file and resize image 35x35
                if ($upload['status']) {
                    $data['partnership_image_id'] = $upload['upload_id'];
                } else {
                    return $this->responseWithError($upload['message'], [], 400);
                }
            }
            
            $data['startup_id'] = $id;
            $startup->partnerships()->create($data);

            DB::commit();
            return $this->responseWithSuccess(___('alert.Startup Partnership added successfully.'));
        } catch (\Throwable $th) {
            DB::rollBack();
            return $this->responseWithError($th->getMessage(), [], 400);
        }
    }

    public function deletePartnership($startup_id, $id)
    {
        try {
            $startup = Startup::find($startup_id);
            if (!$startup) {
                return $this->responseWithError(___('alert.Startup not found.'), [], 400);
            }

            $partnership = $startup->partnerships()->find($id);
            if (!$partnership) {
                return $this->responseWithError(___('alert.Startup Partnership not found.'), [], 400);
            }

            $upload = $this->deleteFile($partnership->partnership_image_id, 'delete'); // delete file from storage
            if (!$upload['status']) {
                return $this->responseWithError($upload['message'], [], 400); // return error response
            }

            $partnership->delete();

            return $this->responseWithSuccess(___('alert.Startup Partnership deleted successfully.')); // return success response
        } catch (\Throwable $th) {
            return $this->responseWithError($th->getMessage(), [], 400); // return error response
        }
    }
    // ===================> End Partnerships Operations <=================

    // ===================> Start Team Member Operations <=================
    public function addTeamMember($request, $id)
    {
        DB::beginTransaction();
        try {
            $startup = Startup::find($id);
            if (!$startup) {
                return $this->responseWithError(___('alert.Startup not found.'), [], 400);
            }

            $data = [
                'name' => ['en' => $request->name, 'ar' => $request->name_ar],
                'role' => ['en' => $request->role, 'ar' => $request->role_ar],
                'description' => ['en' => $request->description, 'ar' => $request->description_ar],
            ];

            if ($request->hasFile('image')) {
                $upload = $this->uploadFile($request->image, 'startups/startup/teamMembers/', [], '', 'image'); // upload file and resize image 35x35
                if ($upload['status']) {
                    $data['team_image_id'] = $upload['upload_id'];
                } else {
                    return $this->responseWithError($upload['message'], [], 400);
                }
            }
            
            $data['startup_id'] = $id;
            $startup->teamMembers()->create($data);

            DB::commit();
            return $this->responseWithSuccess(___('alert.Startup Team Member added successfully.'));
        } catch (\Throwable $th) {
            DB::rollBack();
            return $this->responseWithError($th->getMessage(), [], 400);
        }
    }

    public function deleteTeamMember($startup_id, $id)
    {
        try {
            $startup = Startup::find($startup_id);
            if (!$startup) {
                return $this->responseWithError(___('alert.Startup not found.'), [], 400);
            }

            $member = $startup->teamMembers()->find($id);
            if (!$member) {
                return $this->responseWithError(___('alert.Startup Team Member not found.'), [], 400);
            }

            $upload = $this->deleteFile($member->team_image_id, 'delete'); // delete file from storage
            if (!$upload['status']) {
                return $this->responseWithError($upload['message'], [], 400); // return error response
            }

            $member->delete();

            return $this->responseWithSuccess(___('alert.Startup Team Member deleted successfully.')); // return success response
        } catch (\Throwable $th) {
            return $this->responseWithError($th->getMessage(), [], 400); // return error response
        }
    }
    // ===================> End Team Member Operations <=================


    // ===================> Start Advisor Operations <=================
    public function addAdvisor($request, $id)
    {
        DB::beginTransaction();
        try {
            $startup = Startup::find($id);
            if (!$startup) {
                return $this->responseWithError(___('alert.Startup not found.'), [], 400);
            }

            $data = [
                'name' => ['en' => $request->name, 'ar' => $request->name_ar],
                'role' => ['en' => $request->role, 'ar' => $request->role_ar],
                'description' => ['en' => $request->description, 'ar' => $request->description_ar],
            ];
            
            if ($request->hasFile('image')) {
                $upload = $this->uploadFile($request->image, 'startups/startup/advisors/', [], '', 'image'); // upload file and resize image 35x35
                if ($upload['status']) {
                    $data['advisors_image_id'] = $upload['upload_id'];
                } else {
                    return $this->responseWithError($upload['message'], [], 400);
                }
            }
            
            $data['startup_id'] = $id;
            $startup->advisors()->create($data);

            DB::commit();
            return $this->responseWithSuccess(___('alert.Startup Advisor added successfully.'));
        } catch (\Throwable $th) {
            DB::rollBack();
            return $this->responseWithError($th->getMessage(), [], 400);
        }
    }

    public function deleteAdvisor($startup_id, $id)
    {
        try {
            $startup = Startup::find($startup_id);
            if (!$startup) {
                return $this->responseWithError(___('alert.Startup not found.'), [], 400);
            }

            $advisor = $startup->advisors()->find($id);
            if (!$advisor) {
                return $this->responseWithError(___('alert.Startup Advisor not found.'), [], 400);
            }

            $upload = $this->deleteFile($advisor->advisors_image_id, 'delete'); // delete file from storage
            if (!$upload['status']) {
                return $this->responseWithError($upload['message'], [], 400); // return error response
            }

            $advisor->delete();

            return $this->responseWithSuccess(___('alert.Startup Advisor deleted successfully.')); // return success response
        } catch (\Throwable $th) {
            return $this->responseWithError($th->getMessage(), [], 400); // return error response
        }
    }
    // ===================> End Advisor Operations <=================


}
