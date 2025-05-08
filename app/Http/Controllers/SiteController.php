<?php

namespace App\Http\Controllers;

use App\Models\Slider;
use App\Models\Layanan;
use App\Models\Partner;
use Illuminate\Http\Request;

class SiteController extends Controller
{
    public function index()
    {
        $sliders = Slider::where('status', 1)->get();
        $partners = Partner::where('status', 1)->get();
        $layanans = Layanan::where('status', 1)->get();
        return view('frontend.home',[
            
            'sliders' => $sliders,
            'partners' => $partners,
            'layanans' => $layanans,
        ]);
    }
}
