<?php

namespace Modules\Services\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Contracts\Support\Renderable;
use Illuminate\View\View;
use Modules\Services\Http\Requests\CreateServiceRequest;
use Modules\Services\Http\Requests\UpdateServiceRequest;
use Modules\Services\Interfaces\ServiceInterface;

class ServicesController extends Controller
{
    // constructor injection
    protected $service;

    public function __construct(ServiceInterface $service)
    {
        $this->service = $service;
    }

    /**
     * Display a listing of the resource.
     * @return Renderable
     */
    public function index(Request $request): View
    {
        $data['title'] = ___('frontend.Our Services');
        $data['services'] = $this->service->getAll($request);

        return view('frontend.services.services', compact('data'));
    }

    public function details($id): View
    {
        $service = $this->service->model()->findOrFail($id);
        return view('frontend.services.details', compact('service'));
    }

/*-------------------------------------------------------------------------
                      Start Dashboard Controller Logic
 ------------------------------------------------------------------------*/
    public function servicesList(Request $request): View
    {
        $data['tableHeader']    = $this->service->tableHeader();
        $data['services']          = $this->service->getAll($request);
        $data['title']          = ___('services.Title');

        return view('services::services.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     * @return Renderable
     */
    public function create(): Renderable
    {
        $data['title'] = ___('services.Create Service');

        return view('services::services.create', compact('data'));
    }

    /**
     * Store a newly created resource in storage.
     * @param CreateServiceRequest $request
     * @return Renderable
     */
    public function store(CreateServiceRequest $request)
    {
        try {
            $result = $this->service->store($request);
            if ($result->original['result']) {
                return redirect()->route('services.index')->with('success', $result->original['message']);
            } else {
                return redirect()->route('services.index')->with('danger', $result->original['message']);
            }
        } catch (\Throwable $th) {
            return redirect()->route('services.index')->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    }

    /**
     * Show the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function show($id)
    {
        return view('services::show');
    }

    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function edit($id): View
    {
        $data['title'] = ___('services.Update Service');
        $data['service'] = $this->service->model()->findOrFail($id);

        return view('services::services.edit', compact('data'));
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
            $result = $this->service->update($request, $id);
            if ($result->original['result']) {
                return redirect()->route('services.index')->with('success', $result->original['message']);
            } else {
                return redirect()->route('services.index')->with('danger', $result->original['message']);
            }
        } catch (\Throwable $th) {
            return redirect()->route('services.index')->with('danger', ___('alert.something_went_wrong_please_try_again'));
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
            $result = $this->service->destroy($id);
            if ($result->original['result']) {
                return redirect()->route('services.index')->with('success', $result->original['message']);
            } else {
                return redirect()->route('services.index')->with('danger', $result->original['message']);
            }
        } catch (\Throwable $th) {
            return redirect()->route('services.index')->with('danger', ___('alert.something_went_wrong_please_try_again'));
        }
    }
}
