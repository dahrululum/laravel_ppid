<?php

namespace App\Http\Controllers;

use App\Models\News;
use App\Models\Page;
use App\Models\Photo;
use App\Models\Video;
use App\Models\Slider;
use App\Models\Layanan;
use App\Models\Partner;
use Illuminate\Http\Request;

class SiteController extends Controller
{
    public function index()
    {
        $pages = Page::all();
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
        //video
        $videohl = Video::where('publish_status', 1)
                    ->orderby('publish_date', 'desc')
                    ->limit(1)
                    ->first();
        

        $othervideo = Video::where('publish_status', 1)
                    ->where('id', '!=', $videohl->id)
                    ->orderby('publish_date', 'desc')
                    ->limit(4)
                    ->get();
        //photos
        $photos = Photo::where('publish_status', 1)->orderBy('publish_date', 'desc')->get();
        return view('frontend.home',[
            'pages'  => $pages,
            'sliders'  => $sliders,
            'partners' => $partners,
            'layanans' => $layanans,
           
            'hlnews'   => $hlnews,
            'othernews'=> $othernews,
            'tags_all' => $tags_all,
            'videohl'  => $videohl,
            'othervideo' => $othervideo,
            'photos'    => $photos,
        ]);
    }
    public function detailnews($slug){
        $news = News::where('slug', $slug)->first();
        $othernews = News::where('publish_status', 1)
                    ->where('id', '!=', $news->id)
                    ->orderby('publish_date', 'desc')
                    ->limit(4)
                    ->get();
        $allnews= News::get();
        $tags_all = $allnews->map(fn($allnews) => explode(',', $news->tags))
                    ->flatten()
                    ->unique()   // avoid repeating tags
                    ->sort()     // optional
                    ->values();    

        return view('frontend.detailnews',[
            'news' => $news,
            'othernews' => $othernews,
            'tags_all' => $tags_all
        ]);
    }
    public function detailpage($slug){
        $page = Page::where('slug', $slug)->first();
        
        return view('frontend.detailpage',[
            'page' => $page,
           
        ]);
    }
    public function detailvideo($slug){
        $page = Video::where('slug', $slug)->first();
        
        return view('frontend.detailvideo',[
            'page' => $page,
           
        ]);
    }
    public function detailphoto($slug){
        $page = Photo::where('slug', $slug)->first();
        
        return view('frontend.detailphoto',[
            'page' => $page,
           
        ]);
    }
}
