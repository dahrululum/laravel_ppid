<section class="section-padding" id="section_3">
  <div class="container">
      <div class="row justify-content-center">

          <div class="col-lg-12 col-12 text-center mb-4">
              <h2>Portal PPID Kabupaten/Kota</h2>
          </div>
          @foreach($partners as $partner )
            
         
          <div class="col-lg-3 col-md-6 col-12 mb-4 mt-4 mb-lg-0 p-2  ">
              <div class="custom-block-wrap">
                
                  <img src="{{ asset('uploads/'.$partner->logo) }}" class="custom-block-image img-fluid" alt="">

                  <div class="custom-block">
                      <a href="{{ $partner->urlna }}" class="custom-btn btn" target="_blank">Klik disini</a>
                  </div>
              </div>
          </div>
          @endforeach
           

           

      </div>
  </div>
</section>