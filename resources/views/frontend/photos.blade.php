<section class="section-padding " id="section_3">
    <div class="container">
        <div class="row">

            <div class="col-lg-12 col-12 text-center mb-4">
                <h2 class="" > Gallery Photo</h2>
            </div>
            @foreach($photos as $photo )
            <div class="col-lg-4 col-md-6 col-12 mb-4 mb-lg-0">
                <div class="custom-block-wrap mb-2">
                    <img src="{{ asset('uploads/'.$photo->foto_utama) }}" class="custom-block-image img-fluid" alt="">

                    <div class="custom-block">
                        <div class="custom-block-body">
                            <h5 class="mb-1">{{ $photo->title }}</h5>
 
                             
                        </div>

                        <a href="{{ url('detail-photo/'.$photo->slug)  }}" class="custom-btn btn" target="_blank">Detail Klik disini</a>
                    </div>
                </div>
            </div>
            @endforeach
            

              

        </div>
    </div>
</section>