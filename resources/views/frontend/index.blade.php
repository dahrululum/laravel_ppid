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
        <script src="https://code.responsivevoice.org/responsivevoice.js?key=o3DSWFlZ"></script>
    </head>
    
    <body id="section_1">

        
        @include('frontend.header')
        @include('frontend.nav')

        <main>

            @include('frontend.slider')  
            @include('frontend.feature')  
            @include('frontend.informasi')
            @include('frontend.about')
            @include('frontend.partners')
            @include('frontend.layanan')
            {{-- @include('frontend.profile')
             --}}

           

           

            @include('frontend.news')
            

            @include('frontend.testimoni')

            @include('frontend.contact')


            


            
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
       
        {{-- <script>
            $('body').openAccessibility({
                textSelector: 'h1,h2,h3,h4,h5,p,span',
                highlightedLinks: true,
                isMobileEnabled: true,
                iconSize: 's',
                localization: ['en']
            });
        </script> --}}
    </body>
</html>