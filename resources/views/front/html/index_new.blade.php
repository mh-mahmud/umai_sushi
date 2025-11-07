@extends('front.html.master')
@section('content')
<style type="text/css">
   .fal, .far {
/*         color: #FFF;*/
   }

</style>
   <div class="free">
      <!-- slider-area-start -->
      <section class="slider-area pb-25">
         <div class="container">
            <div class="row justify-content-xl-end">
               <div class="col-xl-12 col-xxl-12 col-lg-12">
                              <div class="tpslider-banner__img" style="max-height:600px !important;">
                                 <img src="{{url('/')}}/public/uploads/{{ $settings->sidebar_image_01 }}" alt="">
                              </div>
               </div>

            </div>
         </div>
      </section>
      <!-- slider-area-end -->

      <!-- services-area-start -->
      
      <section class="services-area pt-50">
         <div class="container">
            <div class="row services-gx-item">
               <div class="col-lg-6 col-sm-6">
                  <div class="tpservicesitem d-flex align-items-center mb-30">
                     <div class="tpservicesitem__icon mr-20"></div>
                     <div class="tpservicesitem__content">
                        <h2 class="">Our Mission</h2>
                        <p>
                           {!! $settings->return_policy !!}
                        </p>
                     </div>
                  </div>
               </div>

               <div class="col-lg-6 col-sm-6">
                  <div class="tpservicesitem d-flex align-items-center mb-30">
                     <div class="tpservicesitem__icon mr-20"></div>
                     <div class="tpservicesitem__content">
                        <h2 class="">Our Vision</h2>
                        <p>
                           {!! $settings->terms_and_conditions !!}
                        </p>
                     </div>
                  </div>
               </div>


            </div>
         </div>
      </section>
      
      <!-- services-area-end -->

      <!-- findus-start -->
      <section class="banner-area pb-20" style="display: flex; justify-content: center; align-items: center; min-height: 40vh; text-align: center;background-color:rgb(36, 35, 35);padding:20px;">
         <!-- <div class="container" style="background-color:rgb(36, 35, 35);padding:30px;"> -->
         <div>
            {!! $settings->contact_address !!}
         </div>
         <!-- </div> -->

      </section>
      <!-- findus-end -->

      <!-- product-area-start -->
      <section class="product-area pt-65 pb-40">
      @if(count($products) > 0)
         <div class="container">
            <div class="row">
               <div class="col-lg-4 col-md-6 col-12">
                  <div class="tpsection mb-40">
                     <h4 class="tpsection__title">Gallery</h4>
                  </div>
               </div>
               
            </div>
            <div class="tab-content" id="nav-tabContent">
               <div class="tab-pane fade show active" id="nav-all" role="tabpanel" aria-labelledby="nav-all-tab">
                  <div class="row row-cols-xxl-3 row-cols-xl-3 row-cols-lg-3 row-cols-md-3 row-cols-sm-2 row-cols-2">

                     @foreach($products as $product)
                     <div class="col">
                        <div class=" tpproduct pb-15 mb-30">
                           <div class="tpproduct__thumb p-relative">

                              @if(file_exists(public_path('/uploads/products/'.$product->img_path)) )
                              <!-- <a href="{{route('product-details', $product->id)}}"> -->
                                 <img style="max-height: 350px;border:1px solid #ddd;" src="{{url('/')}}/uploads/products/{{$product->img_path}}" alt="product-thumb">
                              <!-- </a> -->
                              @else
                                 <a href="{{route('product-details', $product->id)}}">
                                    <img style="max-height: 350px;border:1px solid #ddd;padding:20px" src="{{url('/')}}/uploads/blank.png" alt="product-thumb">
                                 </a>
                              @endif

                           </div>
                        </div>
                     </div>
                     @endforeach

                  </div>
               </div>

            </div>
         </div>
      @endif
       
      </section>
      <!-- product-area-end -->




      <!-- banner-area-start -->
      <section class="banner-area pb-20">
        <div class="tpbanneritem__thumb mb-20">  
        <img style="width:100%;" src="{{url('/')}}/assets/theme/assets/img/banner/banner-bg-05.jpg" alt="banner-img">
        </div>
      </section>
      <!-- banner-area-end -->






      <!-- map-area-start -->
      <div class="map-area pb-60 mt-60">
         <div class="tpshop__location-map">
            <iframe src="{{ $settings->google_map_link }}" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
         </div>
      </div>
      <!-- map-area-end -->

      





   </div>

@endsection
@section('custom_js')
<script type="text/javascript">
   $(".wishlist").on("click", function(e) {
      e.preventDefault();
      // var pro_id = $(this).data("product_id");
      // alert(pro_id);

      let productId = $(this).data("product_id"); // Get the product ID from the data-id attribute

      $.ajax({
        url: '{{ route("wishlist.add") }}', // Laravel route for adding to wishlist
        type: 'POST',
        data: {
            _token: $('meta[name="csrf-token"]').attr('content'), // CSRF token
            product_id: productId,
        },
        success: function(response) {
            if (response.status === 'success') {
                alert(response.message); // Success message
            } else {
                alert(response.message); // Error message
            }
        },
        error: function(xhr) {
            console.error(xhr.responseText); // Log the error
            alert('Something went wrong!');
        }
      });


   });




</script>
@endsection