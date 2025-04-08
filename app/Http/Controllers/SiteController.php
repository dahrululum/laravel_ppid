<?php

namespace App\Http\Controllers;

use App\Models\Slider;
use Illuminate\Http\Request;

class SiteController extends Controller
{
    public function index()
    {
        $sliders = Slider::where('status', 1)->get();
        return view('frontend.home',[
            
            'sliders' => $sliders,
        ]);
    }
}
