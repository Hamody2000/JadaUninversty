<?php

namespace Modules\About\Http\Controllers;

use Illuminate\Http\Request;
use Modules\Page\Entities\Page;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\App;
use Illuminate\Contracts\Support\Renderable;

class AboutController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return Renderable
     */
    public function index()
    {
        $keyword = 'about';

        $data = Page::where('title', 'like', '%' . $keyword . '%')->first();

        return view('frontend.about', compact('data'));
    }
}
