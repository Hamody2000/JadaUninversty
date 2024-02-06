<?php

namespace Modules\Startups\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Modules\StartUps\Interfaces\StartupInterface;
use Modules\StartUps\Http\Requests\StartupTeamRequest;
use Modules\StartUps\Http\Requests\StartupImpactRequest;
use Modules\StartUps\Interfaces\StartupDetailsInterface;
use Modules\StartUps\Http\Requests\StartupProblemRequest;
use Modules\StartUps\Http\Requests\StartupSolutionRequest;
use Modules\StartUps\Http\Requests\StartupTractionRequest;
use Modules\StartUps\Http\Requests\StartupHighlightsRequest;
use Modules\StartUps\Http\Requests\StartupHowItWorksRequest;
use Modules\StartUps\Http\Requests\StartupPartnershipsRequest;

class StartupDetailsController extends Controller
{
     // constructor injection
     protected $startup;
     protected $startupDetails;

     public function __construct(StartupInterface $startup, StartupDetailsInterface $startupDetails)
     {
         $this->startup = $startup;
         $this->startupDetails = $startupDetails;
     }
     
    // Straup Details Cruds
    public function details($id) {
        $data['startup'] = $this->startup->model()->findOrFail($id);
        return view('frontend.StartUps.details', compact('data'));
    }
    
    // ============> Start Startup Highlights <============ // 
    public function editHighLights ($id)
    {
        $data['title'] = ___('startups.Update Startup HighLights');
        $data['startup'] = Auth::user()->startups()->findOrFail($id) ?? '';

        return view('panel.student.startup.editHighLights', compact('data'));
    }

    public function updateHighlights(StartupHighlightsRequest $request, $id)
    {
        try {
            $user = Auth::user();
            $startup = $user ? $user->startups()->findOrFail($id) : null ;

            if (!$startup) {
                return redirect()->route('home')->with('danger', 'Error happened while trying to get this page !');
            }

            $result = $this->startupDetails->updateHighlights($request, $id);
            if ($result->original['result']) {
                return $request->is("startups/{$id}/highlights/update") ? 
                    redirect()->route('student.startup')->with('success', $result->original['message']) :
                    redirect()->route('startups.index')->with('success', $result->original['message']);
            } else {
                return $request->is("startups/{$id}/highlights/update") ? 
                    redirect()->route("startups.highlights.edit", $id)->with('danger', $result->original['message']) :
                    redirect()->route('startups.index')->with('danger', $result->original['message']);
            }
        } catch (\Throwable $th) {
            return $request->is("startups/{$id}/highlights/update") ?
                redirect()->route("startups.highlights.edit", $id)->with('danger', ___('alert.something_went_wrong_please_try_again')) :
                redirect()->route('startups.index')->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    }
    // ============> End Startup Highlights <============ // 

    // ============> Start Startup Problem <============ // 
    public function editProblem($id)
    {
        $data['title'] = ___('startups.Update Startup Problem');
        $data['startup'] = Auth::user()->startups()->findOrFail($id) ?? '';

        return view('panel.student.startup.editProblem', compact('data'));
    }

    public function updateProblem(StartupProblemRequest $request, $id)
    {
        try {
            $user = Auth::user();
            $startup = $user ? $user->startups()->findOrFail($id) : null ;

            if (!$startup) {
                return redirect()->route('home')->with('danger', 'Error happened while trying to get this page !');
            }

            $result = $this->startupDetails->updateProblem($request, $id);
            if ($result->original['result']) {
                return $request->is("startups/{$id}/problem/update") ? 
                    redirect()->route('student.startup')->with('success', $result->original['message']) :
                    redirect()->route('startups.index')->with('success', $result->original['message']);
            } else {
                return $request->is("startups/{$id}/problem/update") ? 
                    redirect()->route("startups.Problem.edit", $id)->with('danger', $result->original['message']) :
                    redirect()->route('startups.index')->with('danger', $result->original['message']);
            }
        } catch (\Throwable $th) {
            return $request->is("startups/{$id}/problem/update") ?
                redirect()->route("startups.Problem.edit", $id)->with('danger', ___('alert.something_went_wrong_please_try_again')) :
                redirect()->route('startups.index')->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    }
    // ============> End Startup Problem <============ // 

    // ============> Start Startup Solution <============ // 
    public function editSolution($id)
    {
        $data['title'] = ___('startups.Update Startup Solution');
        $data['startup'] = Auth::user()->startups()->findOrFail($id) ?? '';

        return view('panel.student.startup.editSolution', compact('data'));
    }

    public function updateSolution(StartupProblemRequest $request, $id)
    {
        try {
            $user = Auth::user();
            $startup = $user ? $user->startups()->findOrFail($id) : null ;

            if (!$startup) {
                return redirect()->route('home')->with('danger', 'Error happened while trying to get this page !');
            }

            $result = $this->startupDetails->updateSolution($request, $id);
            if ($result->original['result']) {
                return $request->is("startups/{$id}/solution/update") ? 
                    redirect()->route('student.startup')->with('success', $result->original['message']) :
                    redirect()->route('startups.index')->with('success', $result->original['message']);
            } else {
                return $request->is("startups/{$id}/solution/update") ? 
                    redirect()->route("startups.solution.edit", $id)->with('danger', $result->original['message']) :
                    redirect()->route('startups.index')->with('danger', $result->original['message']);
            }
        } catch (\Throwable $th) {
            return $request->is("startups/{$id}/solution/update") ?
                redirect()->route("startups.solution.edit", $id)->with('danger', ___('alert.something_went_wrong_please_try_again')) :
                redirect()->route('startups.index')->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    }
    // ============> End Startup Solution <============ // 

    // ============> Start Startup HowItWorks <============ // 
    public function editHowItWorks($id)
    {
        $data['title'] = ___('startups.Update Startup How It Works');
        $data['startup'] = Auth::user()->startups()->findOrFail($id) ?? '';

        return view('panel.student.startup.editHowItWorks', compact('data'));
    }

    public function updateHowItWorks(StartupProblemRequest $request, $id)
    {
        try {
            $user = Auth::user();
            $startup = $user ? $user->startups()->findOrFail($id) : null ;

            if (!$startup) {
                return redirect()->route('home')->with('danger', 'Error happened while trying to get this page !');
            }

            $result = $this->startupDetails->updateHowItWorks($request, $id);
            if ($result->original['result']) {
                return $request->is("startups/{$id}/howItWorks/update") ? 
                    redirect()->route('student.startup')->with('success', $result->original['message']) :
                    redirect()->route('startups.index')->with('success', $result->original['message']);
            } else {
                return $request->is("startups/{$id}/howItWorks/update") ? 
                    redirect()->route("startups.howItWorks.edit", $id)->with('danger', $result->original['message']) :
                    redirect()->route('startups.index')->with('danger', $result->original['message']);
            }
        } catch (\Throwable $th) {
            return $request->is("startups/{$id}/howItWorks/update") ?
                redirect()->route("startups.howItWorks.edit", $id)->with('danger', ___('alert.something_went_wrong_please_try_again')) :
                redirect()->route('startups.index')->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    }
    // ============> End Startup HowItWorks <============ // 

    // ============> Start Startup Traction <============ // 
    public function editTraction($id)
    {
        $data['title'] = ___('startups.Update Startup Tractions');
        $data['startup'] = Auth::user()->startups()->findOrFail($id) ?? '';

        return view('panel.student.startup.editTraction', compact('data'));
    }

    public function updateTraction(StartupTractionRequest $request, $id)
    {
        try {
            $user = Auth::user();
            $startup = $user ? $user->startups()->findOrFail($id) : null ;

            if (!$startup) {
                return redirect()->route('home')->with('danger', 'Error happened while trying to get this page !');
            }

            $result = $this->startupDetails->updateTraction($request, $id);
            if ($result->original['result']) {
                return $request->is("startups/{$id}/traction/update") ? 
                    redirect()->route('student.startup')->with('success', $result->original['message']) :
                    redirect()->route('startups.index')->with('success', $result->original['message']);
            } else {
                return $request->is("startups/{$id}/traction/update") ? 
                    redirect()->route("startups.traction.edit", $id)->with('danger', $result->original['message']) :
                    redirect()->route('startups.index')->with('danger', $result->original['message']);
            }
        } catch (\Throwable $th) {
            return $request->is("startups/{$id}/traction/update") ?
                redirect()->route("startups.traction.edit", $id)->with('danger', ___('alert.something_went_wrong_please_try_again')) :
                redirect()->route('startups.index')->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    }
    // ============> End Startup Traction <============ // 



    // ============> Start Startup Impacts <============ // 
    public function impacts($id)
    {
        $user = Auth::user();
        $startup = $user ? $user->startups()->findOrFail($id) : null ;

        if (!$startup) {
            return redirect()->route('home')->with('danger', 'Error happened while trying to get this page !');
        }

        $data['title'] = ___('startups.Startup Impacts');
        $data['startup_id'] = $startup->id;
        $data['impacts'] = $startup->impacts()->paginate(10);
        $data['tableHeader']    = $this->startupDetails->tableHeader();

        return view('panel.student.startup.Impacts.index', compact('data'));
    }

    public function addImpact(StartupImpactRequest $request, $id)
    {
        try {
            $user = Auth::user();
            $startup = $user ? $user->startups()->findOrFail($id) : null ;

            if (!$startup) {
                return redirect()->route('home')->with('danger', 'Error happened while trying to get this page !');
            }

            $result = $this->startupDetails->addImpact($request, $id);
            if ($result->original['result']) {
                return $request->is("startups/{$id}/impacts/add") ? 
                    redirect()->route('startups.impacts.index', $id)->with('success', $result->original['message']) :
                    redirect()->route('startups.index')->with('success', $result->original['message']);
            } else {
                return $request->is("startups/{$id}/impacts/add") ? 
                    redirect()->route("startups.impacts.index", $id)->with('danger', $result->original['message']) :
                    redirect()->route('startups.index')->with('danger', $result->original['message']);
            }
        } catch (\Throwable $th) {
            return $request->is("startups/{$id}/impacts/add") ?
                redirect()->route("startups.impacts.index", $id)->with('danger', ___('alert.something_went_wrong_please_try_again')) :
                redirect()->route('startups.index')->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    }

    public function deleteImpact(Request $request, $startup_id, $impact_id)
    {
        try {
            $user = Auth::user();
            $startup = $user ? $user->startups()->findOrFail($startup_id) : null ;
            if (!$startup) {
                return redirect()->route('home')->with('danger', 'Error happened while trying to get this page !');
            }

            $result = $this->startupDetails->deleteImpact($startup_id, $impact_id);
            if ($result->original['result']) {
                return $request->is("startups/{$startup_id}/impacts/{$impact_id}/delete") ? 
                    redirect()->route('startups.impacts.index', $startup_id)->with('success', $result->original['message']) :
                    redirect()->route('startups.index')->with('success', $result->original['message']);
            } else {
                return $request->is("startups/{$startup_id}/impacts/{$impact_id}/delete") ? 
                    redirect()->route('startups.impacts.index', $startup_id)->with('danger', $result->original['message']) :
                    redirect()->route('startups.index')->with('danger', $result->original['message']);
            }
        } catch (\Throwable $th) {
            return $request->is("startups/{$startup_id}/impacts/{$impact_id}/delete") ?
                redirect()->route('startups.impacts.index', $startup_id)->with('danger', ___('alert.something_went_wrong_please_try_again')) :
                redirect()->route('startups.index')->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    }
    // ============> End Startup Impacts <============ // 


    // ============> Start Startup Partnerships <============ // 
    public function partnerships($id)
    {
        $user = Auth::user();
        $startup = $user ? $user->startups()->findOrFail($id) : null ;

            if (!$startup) {
                return redirect()->route('home')->with('danger', 'Error happened while trying to get this page !');
            }

        $data['title'] = ___('startups.Startup Partnerships');
        $data['startup_id'] = $startup->id;
        $data['partnerships'] = $startup->partnerships()->paginate(10);
        $data['tableHeader']    = $this->startupDetails->tableHeader();

        return view('panel.student.startup.Partnerships.index', compact('data'));
    }

    public function addPartnership(StartupPartnershipsRequest $request, $id)
    {
        try {
            $user = Auth::user();
            $startup = $user ? $user->startups()->findOrFail($id) : null ;

            if (!$startup) {
                return redirect()->route('home')->with('danger', 'Error happened while trying to get this page !');
            }

            $result = $this->startupDetails->addPartnership($request, $id);
            if ($result->original['result']) {
                return $request->is("startups/{$id}/partnerships/add") ? 
                    redirect()->route('startups.partnerships.index', $id)->with('success', $result->original['message']) :
                    redirect()->route('startups.index')->with('success', $result->original['message']);
            } else {
                return $request->is("startups/{$id}/partnerships/add") ? 
                    redirect()->route("startups.partnerships.index", $id)->with('danger', $result->original['message']) :
                    redirect()->route('startups.index')->with('danger', $result->original['message']);
            }
        } catch (\Throwable $th) {
            return $request->is("startups/{$id}/partnerships/add") ?
                redirect()->route("startups.partnerships.index", $id)->with('danger', ___('alert.something_went_wrong_please_try_again')) :
                redirect()->route('startups.index')->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    }

    public function deletePartnership(Request $request, $startup_id, $partnership_id)
    {
        try {
            $user = Auth::user();
            $startup = $user ? $user->startups()->findOrFail($startup_id) : null ;
            if (!$startup) {
                return redirect()->route('home')->with('danger', 'Error happened while trying to get this page !');
            }

            $result = $this->startupDetails->deletePartnership($startup_id, $partnership_id);
            if ($result->original['result']) {
                return $request->is("startups/{$startup_id}/partnerships/{$partnership_id}/delete") ? 
                    redirect()->route('startups.partnerships.index', $startup_id)->with('success', $result->original['message']) :
                    redirect()->route('startups.index')->with('success', $result->original['message']);
            } else {
                return $request->is("startups/{$startup_id}/partnerships/{$partnership_id}/delete") ? 
                    redirect()->route('startups.partnerships.index', $startup_id)->with('danger', $result->original['message']) :
                    redirect()->route('startups.index')->with('danger', $result->original['message']);
            }
        } catch (\Throwable $th) {
            return $request->is("startups/{$startup_id}/partnerships/{$partnership_id}/delete") ?
                redirect()->route('startups.partnerships.index', $startup_id)->with('danger', ___('alert.something_went_wrong_please_try_again')) :
                redirect()->route('startups.index')->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    }
    // ============> End Startup Partnerships <============ // 


    // ============> Start Startup Partnerships <============ // 
    public function teamMembers($id)
    {
        $user = Auth::user();
        $startup = $user ? $user->startups()->findOrFail($id) : null ;

        if (!$startup) {
            return redirect()->route('home')->with('danger', 'Error happened while trying to get this page !');
        }

        $data['title'] = ___('startups.Startup Team Members');
        $data['startup_id'] = $startup->id;
        $data['teamMembers'] = $startup->teamMembers()->paginate(10);
        $data['tableHeader']    = $this->startupDetails->membersTableHeader();

        return view('panel.student.startup.Team.index', compact('data'));
    }

    public function addTeamMember(StartupTeamRequest $request, $id)
    {
        try {
            $user = Auth::user();
            $startup = $user ? $user->startups()->findOrFail($id) : null ;

            if (!$startup) {
                return redirect()->route('home')->with('danger', 'Error happened while trying to get this page !');
            }

            $result = $this->startupDetails->addTeamMember($request, $id);
            if ($result->original['result']) {
                return $request->is("startups/{$id}/teamMembers/add") ? 
                    redirect()->route('startups.teamMembers.index', $id)->with('success', $result->original['message']) :
                    redirect()->route('startups.index')->with('success', $result->original['message']);
            } else {
                return $request->is("startups/{$id}/teamMembers/add") ? 
                    redirect()->route("startups.teamMembers.index", $id)->with('danger', $result->original['message']) :
                    redirect()->route('startups.index')->with('danger', $result->original['message']);
            }
        } catch (\Throwable $th) {
            return $request->is("startups/{$id}/teamMembers/add") ?
                redirect()->route("startups.teamMembers.index", $id)->with('danger', ___('alert.something_went_wrong_please_try_again')) :
                redirect()->route('startups.index')->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    }

    public function deleteTeamMember(Request $request, $startup_id, $member_id)
    {
        try {
            $user = Auth::user();
            $startup = $user ? $user->startups()->findOrFail($startup_id) : null ;
            if (!$startup) {
                return redirect()->route('home')->with('danger', 'Error happened while trying to get this page !');
            }

            $result = $this->startupDetails->deleteTeamMember($startup_id, $member_id);
            if ($result->original['result']) {
                return $request->is("startups/{$startup_id}/teamMembers/{$member_id}/delete") ? 
                    redirect()->route('startups.teamMembers.index', $startup_id)->with('success', $result->original['message']) :
                    redirect()->route('startups.index')->with('success', $result->original['message']);
            } else {
                return $request->is("startups/{$startup_id}/teamMembers/{$member_id}/delete") ? 
                    redirect()->route('startups.teamMembers.index', $startup_id)->with('danger', $result->original['message']) :
                    redirect()->route('startups.index')->with('danger', $result->original['message']);
            }
        } catch (\Throwable $th) {
            return $request->is("startups/{$startup_id}/teamMembers/{$member_id}/delete") ?
                redirect()->route('startups.teamMembers.index', $startup_id)->with('danger', ___('alert.something_went_wrong_please_try_again')) :
                redirect()->route('startups.index')->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    }
    // ============> End Startup Partnerships <============ // 


    // ============> Start Startup Partnerships <============ // 
    public function advisors($id)
    {
        $user = Auth::user();
        $startup = $user ? $user->startups()->findOrFail($id) : null ;

        if (!$startup) {
            return redirect()->route('home')->with('danger', 'Error happened while trying to get this page !');
        }

        $data['title'] = ___('startups.Startup Advisors');
        $data['startup_id'] = $startup->id;
        $data['advisors'] = $startup->advisors()->paginate(10);
        $data['tableHeader']    = $this->startupDetails->membersTableHeader();

        return view('panel.student.startup.Advisors.index', compact('data'));
    }

    public function addAdvisor(StartupTeamRequest $request, $id)
    {
        try {
            $user = Auth::user();
            $startup = $user ? $user->startups()->findOrFail($id) : null ;

            if (!$startup) {
                return redirect()->route('home')->with('danger', 'Error happened while trying to get this page !');
            }

            $result = $this->startupDetails->addAdvisor($request, $id);
            if ($result->original['result']) {
                return $request->is("startups/{$id}/advisors/add") ? 
                    redirect()->route('startups.advisors.index', $id)->with('success', $result->original['message']) :
                    redirect()->route('startups.index')->with('success', $result->original['message']);
            } else {
                return $request->is("startups/{$id}/advisors/add") ? 
                    redirect()->route("startups.advisors.index", $id)->with('danger', $result->original['message']) :
                    redirect()->route('startups.index')->with('danger', $result->original['message']);
            }
        } catch (\Throwable $th) {
            return $request->is("startups/{$id}/advisors/add") ?
                redirect()->route("startups.advisors.index", $id)->with('danger', ___('alert.something_went_wrong_please_try_again')) :
                redirect()->route('startups.index')->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    }

    public function deleteAdvisor(Request $request, $startup_id, $member_id)
    {
        try {
            $user = Auth::user();
            $startup = $user ? $user->startups()->findOrFail($startup_id) : null ;
            if (!$startup) {
                return redirect()->route('home')->with('danger', 'Error happened while trying to get this page !');
            }

            $result = $this->startupDetails->deleteAdvisor($startup_id, $member_id);
            if ($result->original['result']) {
                return $request->is("startups/{$startup_id}/advisors/{$member_id}/delete") ? 
                    redirect()->route('startups.advisors.index', $startup_id)->with('success', $result->original['message']) :
                    redirect()->route('startups.index')->with('success', $result->original['message']);
            } else {
                return $request->is("startups/{$startup_id}/advisors/{$member_id}/delete") ? 
                    redirect()->route('startups.advisors.index', $startup_id)->with('danger', $result->original['message']) :
                    redirect()->route('startups.index')->with('danger', $result->original['message']);
            }
        } catch (\Throwable $th) {
            return $request->is("startups/{$startup_id}/advisors/{$member_id}/delete") ?
                redirect()->route('startups.advisors.index', $startup_id)->with('danger', ___('alert.something_went_wrong_please_try_again')) :
                redirect()->route('startups.index')->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    }
    // ============> End Startup Partnerships <============ // 

}
