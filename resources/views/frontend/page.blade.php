<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>Portal PPID - Babelprov</title>
        <meta property="og:type" content="website" />
        <meta property="og:title" content="Detail Page - {{ $page->title }}" />
        <meta property="og:description" content="Form Permohonan Informasi Publik Form Pengajuan Keberatan Informasi Publik Informasi Berkala Informasi Serta Merta Informasi Setiap Saat Cari Informasi Publik Berkala 0 [&hellip;]" />
        <meta property="og:url" content="https://portalppid.babelprov.go.id/" />
        <meta property="og:site_name" content="Portal PPID" />
        <meta property="article:modified_time" content="2024-07-03T06:53:41+00:00" />
        <meta property="og:image" content="{{ asset('assets/images/iconbabel.png') }}" />
        <!-- CSS FILES -->        
        <link href="{{ asset('themes/charity/css/bootstrap.min.css') }}" rel="stylesheet">
        <link href="{{ asset('themes/charity/css/bootstrap-icons.css') }}" rel="stylesheet">
        <link href="{{ asset('themes/charity/css/themes.css') }}" rel="stylesheet">
        {{-- <link rel="stylesheet" href="https://cdn.rawgit.com/jossef/open-accessibility/master/dist/open-accessibility.min.css"> --}}
        <link rel="stylesheet" href="{{ asset('assets/css/open-accessibility.min.css') }}">
        <link rel="shortcut icon" href="{{ asset('assets/images/iconbabel.png') }}" >
		<link rel="icon" href="{{ asset('assets/images/logobabel.png') }}" >
		<link rel="apple-touch-icon" sizes="152x152" href="{{ asset('assets/images/logobabel.png') }}">
		<link rel="apple-touch-icon" sizes="120x120" href="{{ asset('assets/images/logobabel.png') }}">
		<link rel="apple-touch-icon" sizes="76x76" href="{{ asset('assets/images/logobabel.png') }}">
        <link rel="apple-touch-icon" href="{{ asset('assets/images/logobabel.png') }}">
        <style>
            /* Custom styles for multi-level dropdown */
            .dropdown-menu .dropdown-submenu {
            position: relative;
            }

            .dropdown-menu .dropdown-submenu .dropdown-menu {
            top: 0;
            left: 100%;
            margin-top: -1px;
            }

            /* Show submenu on hover for desktop */
            @media (min-width: 992px) {
            .dropdown-menu .dropdown-submenu:hover > .dropdown-menu {
                display: block;
            }
            }

            /* Adjustments for smaller screens (optional) */
            @media (max-width: 991.98px) {
            .dropdown-menu .dropdown-submenu .dropdown-menu {
                position: static;
                float: none;
                width: auto;
                margin-top: 0;
                border: none;
                box-shadow: none;
            }
            }
        </style>
    </head>
    
    <body>
 

        @include('frontend.header')
        @include('frontend.nav')

        <main>

            <section class="donate-section text-center">
                <div class="section-overlay"></div>

                <div class="container">
                    <div class="row">

                        <div class="col-lg-12 col-12">
                            <h1 class="text-white">{{ $page->title }}</h1>
                        </div>

                    </div>
                </div>
            </section>

            <section class="news-section section-padding">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-12 col-12">
                            <div class="news-block">
                                @if(!empty($page->image))
                                <div class="news-block-top">
                                    <img src="{{ asset('uploads/'.$page->image) }}" class="news-image img-fluid" alt="">
 
                                </div>
                                @endif
                                
                                <div class="news-block-title mb-2">
                                    <h4>{{ $page->title }}</h4>
                                </div>

                                    <div class="news-block-body">
                                        {!! $page->fulltext !!}
                                    </div>

                                      

                                 
                                       

                                    
                                </div>
                            </div>
                        </div>

                        

                    </div>
                </div>
            </section>

             
        </main>

        @yield('footer')

        <!-- JAVASCRIPT FILES -->
        <script src="{{ asset('themes/charity/js/jquery.min.js') }}"></script>
        <script src="https://cdn.rawgit.com/jossef/open-accessibility/master/dist/open-accessibility.min.js"></script>


       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

        <script src="{{ asset('themes/charity/js/jquery.sticky.js') }}"></script>
        
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
            document.addEventListener("DOMContentLoaded", function(){
                document.querySelectorAll('.dropdown-menu .dropdown-submenu a').forEach(function(element){
                element.addEventListener('click', function (e) {
                    let nextEl = this.nextElementSibling;
                    if(nextEl && nextEl.classList.contains('dropdown-menu')){
                    e.preventDefault();
                    if(nextEl.style.display === 'block'){
                        nextEl.style.display = 'none';
                    } else {
                        nextEl.style.display = 'block';
                    }
                    }
                });
                })
            });
        </script>

        

    </body>
</html>