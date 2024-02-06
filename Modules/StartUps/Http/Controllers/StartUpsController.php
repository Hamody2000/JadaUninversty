<?php

namespace Modules\StartUps\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\View\View;
use Modules\Services\Http\Requests\UpdateServiceRequest;
use Modules\StartUps\Interfaces\StartupInterface;
use Modules\StartUps\Http\Requests\CreateStartupRequest;
use Modules\StartUps\Http\Requests\UpdateStartupRequest;

class StartUpsController extends Controller
{
    // constructor injection
    protected $startup;

    public function __construct(StartupInterface $startup)
    {
        $this->startup = $startup;
    }
    /**
     * Display a listing of the resource.
     * @return Renderable
     */
    public function index(Request $request)
    {
        $data['title'] = ___('frontend.Startups');
        $data['startups'] = $this->startup->getAll($request);

        return view('frontend.StartUps.StartUps', compact('data'));
    }

    public function signup() {
        return view('frontend.StartUps.signup');
    }

    public function studentStartup(Request $request): View
    {
        $data['tableHeader']    = $this->startup->tableHeader();
        $data['startups']          = $this->startup->model()->where('created_by', auth()->id())->paginate(5);
        $data['title']          = ___('startups.Title');

        return view('panel.student.startup.index', compact('data'));
    }

    public function editStartup($id): View
    {
        $data['title'] = ___('startups.Update Startup');
        $data['startup'] = $this->startup->model()->findOrFail($id);

        return view('panel.student.startup.edit', compact('data'));
    }

/*-------------------------------------------------------------------------
                      Start Dashboard Controller Logic
 ------------------------------------------------------------------------*/
    public function startupsList(Request $request): View
    {
        $data['tableHeader']    = $this->startup->tableHeader();
        $data['startups']          = $this->startup->getAll($request);
        $data['title']          = ___('startups.Title');

        return view('startups::startups.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     * @return Renderable
     */
    public function create(): Renderable
    {
        $data['title'] = ___('startups.Create Startup');

        return view('startups::startups.create', compact('data'));
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Renderable
     */
    public function store(CreateStartupRequest $request)
    {
        try {
            $result = $this->startup->store($request);
            if ($result->original['result']) {
                
                return $request->is('startups/storeSignup') ?
                    redirect()->route('frontend.startups')->with('success', $result->original['message']) :
                    redirect()->route('startups.index')->with('success', $result->original['message']);
            } else {
                return $request->is('startups/storeSignup') ?
                    redirect()->route('frontend.startups')->with('danger', $result->original['message']) :
                    redirect()->route('startups.index')->with('danger', $result->original['message']);
            }
        } catch (\Throwable $th) {
            return $request->is('startups/storeSignup') ?
                    redirect()->route('frontend.startups')->with('danger', ___('alert.something_went_wrong_please_try_again')) :
                    redirect()->route('startups.index')->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    }

    /**
     * Show the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function show($id)
    {
        return view('startups::show');
    }

    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function edit($id): View
    {
        $data['title'] = ___('startups.Update Startup');
        $data['startup'] = $this->startup->model()->findOrFail($id);

        return view('startups::startups.edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Renderable
     */
    public function update(UpdateServiceRequest $request, $id)
    {
        try {
            $result = $this->startup->update($request, $id);
            if ($result->original['result']) {
                return $request->is("startups/student/update/{$id}") ? 
                    redirect()->route('student.startup')->with('success', $result->original['message']) :
                    redirect()->route('startups.index')->with('success', $result->original['message']);
            } else {
                return $request->is("startups/student/update/{$id}") ? 
                    redirect()->route('student.startup.edit')->with('danger', $result->original['message']) :
                    redirect()->route('startups.index')->with('danger', $result->original['message']);
            }
        } catch (\Throwable $th) {
            return $request->is("startups/student/update/{$id}") ?
                redirect()->route('student.startup.edit')->with('danger', ___('alert.something_went_wrong_please_try_again')) :
                redirect()->route('startups.index')->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    }

    /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Renderable
     */
    public function destroy($id)
    {
        try {
            $result = $this->startup->destroy($id);
            if ($result->original['result']) {
                return redirect()->route('startups.index')->with('success', $result->original['message']);
            } else {
                return redirect()->route('startups.index')->with('danger', $result->original['message']);
            }
        } catch (\Throwable $th) {
            return redirect()->route('startups.index')->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    }
}
