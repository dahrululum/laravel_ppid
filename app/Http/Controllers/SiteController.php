<?php

namespace App\Http\Controllers;

use App\Models\News;
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
        $hlnews = News::where('publish_status', 1)->orderBy('created_at', 'desc')->first();
        $othernews = News::where('publish_status', 1)
                            ->where('id', '!=', $hlnews->id)    
                            ->orderBy('created_at', 'desc')->limit(5)->get(); 
        $news= News::get();
        $tags_all = $news->map(fn($news) => explode(',', $news->tags))
        ->flatten()
        ->unique()   // avoid repeating tags
        ->sort()     // optional
        ->values();             
                            
        return view('frontend.home',[
            
            'sliders'  => $sliders,
            'partners' => $partners,
            'layanans' => $layanans,
            'hlnews'   => $hlnews,
            'othernews'=> $othernews,
            'tags_all' => $tags_all
        ]);
    }
}
