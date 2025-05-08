<section class="section-padding section-bg" id="section_3">
    <div class="container">
        <div class="row">

            <div class="col-lg-12 col-12 text-center mb-2">
                <h2 class="" style="color:white"> Layanan  Digital</h2>
            </div>
            @foreach($layanans as $layanan )
            <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                <div class="custom-block-wrap mb-2">
                    <img src="{{ asset('uploads/'.$layanan->foto) }}" class="custom-block-image2 img-fluid" alt="">

                    <div class="custom-block">
                        <div class="custom-block-body">
                            <h5 class="mb-3">{{ $layanan->title }}</h5>

                            <p>{!! $layanan->description !!}</p>

                           

                             
                        </div>

                        <a href="{{ $layanan->urlna }}" class="custom-btn btn" target="_blank">Klik disini</a>
                    </div>
                </div>
            </div>
            @endforeach
            

              

        </div>
    </div>
</section>