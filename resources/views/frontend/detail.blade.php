<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>Portal PPID - Babelprov</title>

        <!-- CSS FILES -->        
        <link href="{{ asset('themes/charity/css/bootstrap.min.css') }}" rel="stylesheet">
        <link href="{{ asset('themes/charity/css/bootstrap-icons.css') }}" rel="stylesheet">
        <link href="{{ asset('themes/charity/css/themes.css') }}" rel="stylesheet">
        {{-- <link rel="stylesheet" href="https://cdn.rawgit.com/jossef/open-accessibility/master/dist/open-accessibility.min.css"> --}}
        <link rel="stylesheet" href="{{ asset('assets/css/open-accessibility.min.css') }}">
        
    </head>
    
    <body>
 

        @include('frontend.header')
        @include('frontend.nav')

        <main>

            <section class="news-detail-header-section text-center">
                <div class="section-overlay"></div>

                <div class="container">
                    <div class="row">

                        <div class="col-lg-12 col-12">
                            <h1 class="text-white">News Detail</h1>
                        </div>

                    </div>
                </div>
            </section>

            <section class="news-section section-padding">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-7 col-12">
                            <div class="news-block">
                                <div class="news-block-top">
                                    <img src="{{ asset('themes/charity/images/news/medium-shot-volunteers-with-clothing-donations.jpg') }}" class="news-image img-fluid" alt="">

                                    <div class="news-category-block">
                                        <a href="#" class="category-block-link">
                                            Lifestyle,
                                        </a>

                                        <a href="#" class="category-block-link">
                                            Clothing Donation
                                        </a>
                                    </div>
                                </div>

                                <div class="news-block-info">
                                    <div class="d-flex mt-2">
                                    <div class="news-block-date">
                                        <p>
                                            <i class="bi-calendar4 custom-icon me-1"></i>
                                            {{ 
                                    
                                                \Carbon\Carbon::parse($news->publish_date)->isoFormat('dddd, D MMMM Y'); }}
                                        </p>
                                    </div>

                                    <div class="news-block-author mx-5">
                                        <p>
                                            <i class="bi-person custom-icon me-1"></i>
                                           {{ $news->publish_by }}
                                        </p>
                                    </div>

                                    
                                </div>

                                <div class="news-block-title mb-2">
                                    <h4>{{ $news->title }}</h4>
                                </div>

                                    <div class="news-block-body">
                                        {!! $news->fulltext !!}
                                    </div>

                                      

                                    <div class="social-share border-top mt-5 py-4 d-flex flex-wrap align-items-center">
                                        

                                        <div class="d-flex">
                                            <a href="#" class="social-icon-link bi-facebook"></a>

                                            <a href="#" class="social-icon-link bi-twitter"></a>

                                            <a href="#" class="social-icon-link bi-printer"></a>

                                            <a href="#" class="social-icon-link bi-envelope"></a>
                                        </div>
                                    </div>

                                       

                                    
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-12 mx-auto mt-4 mt-lg-0">
                            <form class="custom-form search-form" action="#" method="post" role="form">
                                <input class="form-control" type="search" placeholder="Search" aria-label="Search">

                                <button type="submit" class="form-control">
                                    <i class="bi-search"></i>
                                </button>
                            </form>

                            <h5 class="mt-5 mb-2">Berita Lainnya</h5>
                            @foreach ($othernews as $item )
                                <div class="news-block news-block-two-col d-flex mt-4">
                                    <div class="news-block-two-col-image-wrap">
                                        <a href="news-detail.html">
                                            <img src="{{ asset('uploads/'.$item->foto) }}" class="news-image img-fluid" alt="">
                                        </a>
                                    </div>

                                    <div class="news-block-two-col-info">
                                        <div class="news-block-title mb-2">
                                            <h6><a href="news-detail.html" class="news-block-title-link">{{ $item->title }}</a></h6>
                                        </div>

                                        <div class="news-block-date">
                                            <p>
                                                <i class="bi-calendar4 custom-icon me-1"></i>
                                                {{ 
                                    
                                                    \Carbon\Carbon::parse($item->publish_date)->isoFormat('dddd, D MMMM Y'); }}
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            @endforeach

                             

                             

                            <div class="tags-block">
                                <h5 class="my-3">Tags</h5>
                                @foreach($tags_all as $tags)
                                <a href="{{ 'tags/'.$tags }}" class="tags-block-link">
                                    {{ $tags }}
                                </a>  
                                @endforeach
                                
                            </div>

                            <form class="custom-form subscribe-form" action="#" method="post" role="form">
                                <h5 class="mb-4">Newsletter Form</h5>

                                <input type="email" name="subscribe-email" id="subscribe-email" pattern="[^ @]*@[^ @]*" class="form-control" placeholder="Email Address" required>

                                <div class="col-lg-12 col-12">
                                    <button type="submit" class="form-control">Subscribe</button>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </section>

             
        </main>

        @yield('footer')

        <!-- JAVASCRIPT FILES -->
        <script src="{{ asset('themes/charity/js/jquery.min.js') }}"></script>
        <script src="https://cdn.rawgit.com/jossef/open-accessibility/master/dist/open-accessibility.min.js"></script>


        <script src="{{ asset('themes/charity/js/bootstrap.min.js') }}"></script>
        <script src="{{ asset('themes/charity/js/jquery.sticky.js') }}"></script>
        <script src="{{ asset('themes/charity/js/click-scroll.js') }}"></script>
        <script src="{{ asset('themes/charity/js/counter.js') }}"></script>
        <script src="{{ asset('themes/charity/js/custom.js') }}"></script>
       
        <script>
            $('body').openAccessibility({
                textSelector: 'h1,h2,h3,h4,h5,p,span',
                highlightedLinks: true,
                isMobileEnabled: true,
                iconSize: 's',
                localization: ['en']
            });
        </script>

        

    </body>
</html>