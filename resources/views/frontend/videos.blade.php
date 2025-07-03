<section class=" section-padding section-bg">
    @php
        //idvideoyoutube
        $urlna=$videohl->urlna;
        
        $spliturl=explode('=', $urlna);
       
      

    @endphp
    <div class="container">
        <div class="row">

            <div class="col-lg-12 col-12 text-center mb-4">
                <h2 class="" style="color:white"> Gallery Video</h2>
            </div>
            <div class="col-lg-7 ">
                 @if($spliturl[1]==null)
                <iframe width="100%" height="410" src="https://www.youtube.com/embed/OxnUubsBthY" title="{{ $videohl->title }}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                @else
                    <iframe width="100%" height="410" src="https://www.youtube.com/embed/{{ $spliturl[1] }}" title="{{ $videohl->title }}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                @endif
            </div>
            <div class="col-lg-5 ">
                <h3 class="widget-title text-white border-bottom p-2">Video Lainnya</h3>
                @foreach ($othervideo as $item)
                <div class="news-block news-block-two-col d-flex mb-2 mt-1">
                    <div class="news-block-two-col-image-wrap">
                        <a href="{{ url('detail-video/'.$item->slug) }}">
                            <img src="{{ asset('uploads/'.$item->foto) }}" class="custom-block-image img-fluid" alt="">
                        </a>
                    </div>

                    <div class="news-block-two-col-info">
                        <div class="news-block-title mb-2">
                            <h6><a href="{{ url('detail-video/'.$item->slug) }}" class="news-block-title-link text-white">{{ $item->title }}</a></h6>
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

            </div>
        </div>
    </div>
</section>