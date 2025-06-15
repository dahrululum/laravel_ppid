@php
setlocale(LC_TIME, 'id_ID');
\Carbon\Carbon::setLocale('id');
@endphp
<section class="news-section section-padding" id="section_5">
    <div class="container">
        <div class="row">

            <div class="col-lg-12 col-12 mb-5">
                <h2>Berita Terkini</h2>
            </div>
           
            <div class="col-lg-7 col-12">
                <div class="news-block">
                    <div class="news-block-top">
                        <a href="{{ 'newsdetail/'.$hlnews->slug }}">
                            <img src="{{ asset('uploads/'.$hlnews->foto) }}" class="news-image img-fluid" alt="">
                        </a>

                        <div class="news-category-block">
                               
                                @php
                                   
                                    $tags = explode(',', $hlnews->tags);
                                    foreach ($tags as $tag) {
                                        echo '<a href="#" class="category-block-link">' . $tag . ',</a>';
                                    }

                                @endphp
                             
                        </div>
                    </div>

                    <div class="news-block-info">
                        <div class="d-flex mt-2">
                            <div class="news-block-date">
                                <p>
                                    <i class="bi-calendar4 custom-icon me-1"></i>
                                   
                                    {{ 
                                    
                                    \Carbon\Carbon::parse($hlnews->publish_date)->isoFormat('dddd, D MMMM Y'); }}
                                </p>
                            </div>

                            <div class="news-block-author mx-5">
                                <p>
                                    <i class="bi-person custom-icon me-1"></i>
                                   {{ $hlnews->publish_by }}
                                </p>
                            </div>

                             
                        </div>

                        <div class="news-block-title mb-2">
                            <h4><a href="{{ 'detail-news/'.$hlnews->slug }}" class="news-block-title-link">{{ $hlnews->title }}</a></h4>
                        </div>

                        <div class="news-block-body">
                            <p>{!! $hlnews->introtext !!}</p>
                        </div>
                    </div>
                </div>

                 
            </div>

            <div class="col-lg-4 col-12 mx-auto">
                <form class="custom-form search-form" action="#" method="get" role="form">
                    <input name="search" type="search" class="form-control" id="search" placeholder="Search" aria-label="Search">

                    <button type="submit" class="form-control">
                        <i class="bi-search"></i>
                    </button>
                </form>

                <h5 class="mt-2 mb-3">Berita Lainnya</h5>
                @foreach ($othernews as $item)
                <div class="news-block news-block-two-col d-flex mb-2 mt-1">
                    <div class="news-block-two-col-image-wrap">
                        <a href="{{ 'detail-news/'.$item->slug }}">
                            <img src="{{ asset('uploads/'.$item->foto) }}" class="news-image img-fluid" alt="">
                        </a>
                    </div>

                    <div class="news-block-two-col-info">
                        <div class="news-block-title mb-2">
                            <h6><a href="{{ 'detail-news/'.$item->slug }}" class="news-block-title-link">{{ $item->title }}</a></h6>
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
                    <h5 class="mb-3">Tags</h5>
                    @foreach($tags_all as $tags)
                    <a href="{{ 'tags/'.$tags }}" class="tags-block-link">
                        {{ $tags }}
                    </a>  
                    @endforeach
                   
 
                </div>

                 
            </div>

        </div>
    </div>
</section>