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
               <div class="col-xl-9 col-xxl-7 col-lg-9">
                  <div class="tp-slider-area p-relative">
                     <div class="swiper-container slider-active">
                        <div class="swiper-wrapper">

                           @foreach($sliders as $slide)
                           <div class="swiper-slide">
                              <div class="tp-slide-item">
                                 <!-- <div class="tp-slide-item__content">
                                    <h4 class="tp-slide-item__sub-title">Accessories</h4>
                                    <h3 class="tp-slide-item__title mb-25">Up To 
                                       <i>40% Off 
                                          <img src="{{url('/')}}/assets/theme/assets/img/icon/title-shape-02.jpg" alt="">
                                       </i> 
                                       latest Creations</h3>
                                    <a class="tp-slide-item__slide-btn tp-btn" href="shop.html">Shop Now <i class="fal fa-long-arrow-right"></i></a>
                                 </div> -->
                                 <div class="tp-slide-item__img">
                                    <img src="{{url('/')}}/uploads/sliders/{{$slide->slider_image}}" alt="{{$slide->slider_title}}">
                                 </div>
                              </div>
                           </div>
                           @endforeach

                        </div>
                     </div>
                     <div class="slider-pagination"></div>
                  </div>
               </div>
               <!-- <div class="col-xl-3 col-xxl-3 col-lg-3 d-none d-md-block"> -->
               <div class="col-xl-3 col-xxl-3 col-lg-3">
                  <div class="row">
                     <div class="col-lg-12 col-md-6 col-6">
                        <div class="tpslider-banner tp-slider-sm-banner mb-30">
                           <a href="#">
                              <div class="tpslider-banner__img">
                                 <img src="{{url('/')}}/public/public/uploads/{{ $settings->sidebar_image_01 }}" alt="">
                                 <!-- <div class="tpslider-banner__content">
                                    <span class="tpslider-banner__sub-title">Hand made</span>
                                    <h4 class="tpslider-banner__title">New Modern & Stylist <br> Crafts</h4>
                                 </div> -->
                              </div>
                           </a>
                        </div>
                     </div>
                     <div class="col-lg-12 col-md-6 col-6">
                        <div class="tpslider-banner">
                           <a href="#">
                              <div class="tpslider-banner__img">
                                 <img src="{{url('/')}}/public/public/uploads/{{ $settings->sidebar_image_02 }}" alt="">
                                 <!-- <div class="tpslider-banner__content">
                                    <span class="tpslider-banner__sub-title">Popular</span>
                                    <h4 class="tpslider-banner__title">Energy with our <br> newest collection</h4>
                                 </div> -->
                              </div>
                           </a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- slider-area-end -->

      <!-- services-area-start -->
      <section class="services-area pt-30">
         <div class="container">
            <div class="row services-gx-item">
               <div class="col-lg-3 col-sm-6">
                  <div class="tpservicesitem d-flex align-items-center mb-30">
                     <div class="tpservicesitem__icon mr-20">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="34" height="36" viewBox="0 0 34 36">
                           <image id="services-icon-01.svg" width="34" height="36" xlink:href="data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAACIAAAAkCAYAAADsHujfAAADCklEQVRYhcWYXYiMURjHf2bFcqEpqV0udsaN3RuLUoR2lZDsbiS0tt0ttLlxw14gX+GCC3spF9gbQpI2bKJ8la+yvrM+2pFIbbTLBYqsDv9Tx9v7vvPOzjvjX2/TzDznnN85z3Oe85yXPNUA3ACeAM35dparEkAL8BjoAVYCrUBGT0uhAcYAmzWYWYV6HxsD9MgBGhEnQBJoBwacJ9us6wVrgNYD4/MF2KXBrwI1+r0ReB7RDabNZdluBcqHCzAEPABSPnbLHTcYl4wM6XMacBp4C+wDKsIAyoC9AjgFTBfAUeAHcCwAaBFwTUAbgFEhY6TUzzfgiBdoInAA+AJ0AumADvYDHwU5xcdmKnDWccOkCEBDmuifCfboh7UhDd0OtgNvgEvAXB+bSuA40K8J+q2iVavGfmm+9ykmzEzuAqsjAE0A2tTGBPISH5u0Zv0ZOOwBWqx2/Rq7z4KktedtYnodMTGVOG0eAk0+NtYNP/V5D+gF1mnMtBfEu2S9OWZKC9TnaVOiIM4IptFn5QJBrFbw1112i46OANTi5Bmz7J/kBpPYvvvYRwKxWuBkyo3AuBDbpD6bFIg2EabiALGaCXQBm/Q94QGwidCcymMFYhUriKtK5Z4OB+A8MEc2OYGEpeVsMsFcDZxQQM4Dng63s3xAUMzcAQYjQFSH/ZkI+zMmmWC9ouNjy/8EOQfcVCx0BBnl65owfdXuua40Hyp3RWbrDIhTXVEg8MkDh1TsLCvgSmUF6Xb8eFA7wu8QKziIKeGe6WAyQLuBVUBpMUDcYN0GvAL2CKBOW64o8u6aTj05VdtxKCFX7PBUUB+KNH65xh40IAuBXzr8gir1uFWlovmF6pW6hAphUzhPFtB9AVUVAGAWcBK4pTtOha6x791dY4FmAO+Ai8AZNc5Xtbrxdat6SzulQ1aV6X6SUSc1AQ1M3tkZ8F+tysQB2SQD7CKpVPVmRneghgggLkC7iqRY5b4HafYBWSr/Z3TvKfjp7gLdBi5oB5iXN+bFTTHKi3+0RoekccP8YfcC/AZJgs7K1UbdbAAAAABJRU5ErkJggg=="/>
                         </svg>                         
                     </div>
                     <div class="tpservicesitem__content">
                        <h4 class="tpservicesitem__title">Free shipping</h4>
                        <p>On Taka 10000+ Purchase</p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="tpservicesitem d-flex align-items-center mb-30">
                     <div class="tpservicesitem__icon mr-20">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="36" height="27" viewBox="0 0 36 27">
                           <image id="services-icon-02.svg" width="36" height="27" xlink:href="data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAbCAYAAAAULC3gAAACyUlEQVRIic3XX8iecxgH8M+7XvmzMMIawxzYTpSVImp70aRETSJENrYDbQcjmqTt3YHRIssWO/InHCAkITmgsMbKWi29Q2wl2QEbxdQwXfV96u3Z+zzP/c692bfunrvffV3X/X1+13V9r989hKl4ENdgivbwJ7ZjPXY1jTqMJzAXj2Nfi4SOx234AtdiW1PH3zCrRSLduBk/Y1pTh4NHkEwHG/FsE8OhEHohv/djES5umdAMLMB8bO5nOJzfMRzAr/gm+W8TYymNR3FVP8PODg39xxfOwa0DbDZhC5bj3V5Gw70eTBJF5iZ82sOt0vU3lqY8ZuOPXq9oo6hX46k+zy/FXpyBj6J7E6JNIeyH0qJXsAoP4OFeMnC0CBUewR3JyGtY+38T2pcx8mTIlYpf0W3UVlGLfi1sYDcrXbk+aRzFi52HbbX9OZjZ0La67Uv8gzuxDNPxXCeNR2N0DMLl2JpdOyYIiST8ogGhk3FiCy+sc9dJA2wO9iN0D37A79ifeXTXYRCpbtqROKXO3+LuyRJalyE7kkFb3Xg9vo+4NcVofEayO9U8V2dttB+h7qsczo2q1gngR6xJy9YIuLIBodnZ4fJZEb+9OaGenXo55N2dth9fI69m3pSQ1Yy6Li36HlbiEpyA+wYQ2hDh/Tx/ZmFS/3rm3mmZcYvH+ewfSl73jFusGXMLbs85+Omsr85Ba0tOfz8NIDQtO3NZ4q/J+r0h8gbe6foAOL9q48J0UgfPROR2x1FqaB5exqn4AA8NIPRYSH2NG8atz09JnIWPQ7CDvyYKtCQpOxM7c+2K83EJduMAMlJnX4XU1viN5X56iDbq2tKLz/BSgo2kbur+TbzfJEjwId7CeV1xNqaLG+N0PJ+ueDtX3VfKTplEnCqFilMaVPVSx46KUw1SnXYIBg3VmsoXRUMqjdXGh4ML8jFaf+YTfDdhEPwLg8uoL4tFMQIAAAAASUVORK5CYII="/>
                         </svg>                         
                     </div>
                     <div class="tpservicesitem__content">
                        <h4 class="tpservicesitem__title">Delivery Support</h4>
                        <p>We provide door to door delivery</p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="tpservicesitem d-flex align-items-center mb-30">
                     <div class="tpservicesitem__icon mr-20">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="36" height="36" viewBox="0 0 36 36">
                           <image id="services-icon-03.svg" width="36" height="36" xlink:href="data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAYAAADhAJiYAAACnklEQVRYhcWYTYhOYRTHf02KrDTEAtOgfJQwFjK+S7FSIjaGmWGaSamZiAXiXbHwbWNB2IiShSxYYAwhSiSRSb1D2dGrLBSa0dG5ddyee+97733u9a/prfOce57fPfecc587FKiNwGvgJ/AMmFfkZknqBEaA28BO4B1QA1r+B8xWhTlpbKOBJ8C3sqECmHOOtXEK9aWsxycwv4BLMT4C9bIMqPWaGQszEbgFfNXf5hBUoTXVBxwO2a4DH4EKUAX6zdoY4GkRNbXE3HlYn4CDauvQDDYaH8nUfYXy9vieA3sj1vo1M23AK+C9w8dbTTXpb0OMj2RuUDMzBMyJ8LNQ87PAbNdNWuv0HxVh3xIqdIG+kRYmmDMn0l4YUkXjbDbma8DjNEG2xQy9LDC2K5s1QxfrDeIaepO0S9o8wFT1L6pj/1GnY+gJzFstxBllwojTD+CMI4ikeFqZMKINGmiWsc0FBjzCTK4XRrRGg61M8JO2XQVMSQlTd2asXujFsyPWd+iLUjb+DexR+4IiYERTgQ8RQXbrpqeARcAxYBgYb6C8wsRBHVKYIyE/sa0OXR/ADPqACSSF/V0DX3HAYGrGbuo1M4FWaJsHL8o3wP4IGFfNiL3XF8xarYtHwNIInySYcNYyq9Gc9qLe2kmt/Rm46wNG1JFwdxXTZS6YZbre7gvoTugsbNWim9V083V62B8yBXxAv1zH+gISmKsx6wt14wFTKw9MRqsJn0WpJBN4RIdfPZoJTDd+yyNmUib1aLDzOWJc1gx5gRlOc3pzqE9vqDsvTJfCZH3uE3R6C8zZvDDtGR5Tg34sHgcemq7blxemxzFP4rQJuGmOHTX9aujWs1EudaWsmV2mvY8Ci/MChCX/FLiQwv8ecNo3xF8BfwD4tdQxtW0vigAAAABJRU5ErkJggg=="/>
                         </svg>                         
                     </div>
                     <div class="tpservicesitem__content">
                        <h4 class="tpservicesitem__title">Secured Payments</h4>
                        <p>We accept all major credit cards</p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="tpservicesitem d-flex align-items-center mb-30">
                     <div class="tpservicesitem__icon mr-20">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="36" height="36" viewBox="0 0 36 36">
                           <image id="services-icon-04.svg" width="36" height="36" xlink:href="data:img/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAYAAADhAJiYAAADW0lEQVRYhc2YaYhNYRjHfyZLJkWMCVmubYoppSHLWIYIY42GTGQwKREfqLEPTVK+SLKlGEzKB5n5wAfRUGQpy5SyjRl7sitLiRk94390Ou4999w7d67519u957zv87z/53m3/3lbEDs6ANOB4cAgoDeQBrQE3gEPgNfAOeA88DRMDyGgANjqrYiF0ASgCBgJpAK3gCqgVgTqgM7qbCAwWnbXgX3AMZcvI3Mkxv7/YihQCdTrd7WyFA0dgXygXLZGPM9FqD5WIsa+GPgBXAbGxRONYBk7KRKHgHWxEmoDnJbRRs2PRGAp8F5+AxOy4bgEfATGJ4CE+XuoCW/lqx+hcJHvBbKAUcCdBBD6xJ+h7+p5/yqI8VYxzwvQtslhy/WnomkWKNfSTNQEbhQGa6jmN5fs2K5Z3Qx4NKAd8E17RCIxJd7hn6zh6pdAMtnyOSZWQ4tgGPDSZ8jW6WC1A3QT8MRVNwvIBZZ5bAqB+0BbnX9ufAfm6PcfpACZwKMIZGwL2C4y2XLeSnW2TexShr1BTgKOAzVauU4QOcDnSGQcXNGBFw7XgDK9z/IMQ5men3ns5ul9X8/7IyKX5kcGCaptEerGKhOGzeqoDzBX/6vDEDoD3PC8a6/2S3x4hJzEPAZKopBeJYc7gR6K9CywR4TS1a6LhNoij32O7DN9+virka4CBwOQceTmWtdp7ZR7qivUc7rHR77ep/j0Y9mrT9GQ9YzQaAOwWyvmA7BSc2GIyn5JiolqvwKoAN54/LRR5up8CPV3AtsCvI3QqEzywSm22ga46hdq6NDcsizMDOMnJ4CUqdBHQUN05qh7FINoKNF+Fu/hbIJwPVJ09rCmkYRyNd/iwVglZZhje9hnc0wGSoG77n5Gi+G0/0AmpL4LvBWVWk2pSSZUGkkYGtMvwI4kklmu7CyI1KBIDaYmgUxI283RaA1PadVlNDGZWpWoU6Q1cFEyIacJyGS4yIQCtG9AB32L1wU4eGPBYmXfyPSKx0Gx5lSN7oTixQjXDYp9GXdqTFR2c3FBzqokLYKk2jTQbJ1PZntbu7kvYrkwMqlq8mKGZKztrHZpZSLNDt1fitzmiBXnwsqucg4AJ4J0Es8NlklQ2xZMY5tksCu9bvJlVy3PJSNuasW+COwZ+A1hwdFJsNdDBgAAAABJRU5ErkJggg=="/>
                         </svg>                         
                     </div>
                     <div class="tpservicesitem__content">
                        <h4 class="tpservicesitem__title">Customer Service</h4>
                        <p>Top notch customer setvice</p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- services-area-end -->

      <!-- product-area-start -->
      <section class="product-area pt-65 pb-40">
      @if(count($rameen) > 0)
         <div class="container">
            <div class="row">
               <div class="col-lg-4 col-md-6 col-12">
                  <div class="tpsection mb-40">
                     <h4 class="tpsection__title">Rameen</h4>
                  </div>
               </div>
               
            </div>
            <div class="tab-content" id="nav-tabContent">
               <div class="tab-pane fade show active" id="nav-all" role="tabpanel" aria-labelledby="nav-all-tab">
                  <div class="row row-cols-xxl-4 row-cols-xl-3 row-cols-lg-3 row-cols-md-3 row-cols-sm-2 row-cols-2">

                     @foreach($rameen as $product)
                     <div class="col">
                        <div class=" tpproduct pb-15 mb-30">
                           <div class="tpproduct__thumb p-relative">

                              {{--
                              @if($product->stock_status == "In Stock")
                                 <span class="tpproduct__thumb-discount_in-stock">{{$product->stock_status}}</span>
                              @else
                                 <span class="tpproduct__thumb-discount">{{$product->stock_status}}</span>
                              @endif
                              --}}
                              

                              @if(file_exists(public_path('/uploads/products/'.$product->img_path)) )
                              <a href="{{route('product-details', $product->id)}}">
                                 <img style="max-height: 350px;border:1px solid #ddd;padding:20px" src="{{url('/')}}/uploads/products/{{$product->img_path}}" alt="product-thumb">
                                 {{--<img class="product-thumb-secondary" src="{{url('/')}}/assets/theme/assets/img/product/home-three/product-44.jpg" alt="product-thumb">--}}
                              </a>
                              @else
                                 <a href="{{route('product-details', $product->id)}}">
                                    <img style="max-height: 350px;border:1px solid #ddd;padding:20px" src="{{url('/')}}/uploads/blank.png" alt="product-thumb">
                                 </a>
                              @endif
                              <div class="tpproduct__thumb-action">
                                 <!-- <a class="comphare" href="#"><i class="fal fa-exchange"></i></a> -->
                                 <a class="quckview" href="{{route('product-details', $product->id)}}"><i class="fal fa-eye"></i></a>
                                 {{--<a data-product_id="{{ $product->id }}" class="wishlist" href="#"><i class="fal fa-heart"></i></a>--}}
                              </div>
                           </div>
                           <div class="tpproduct__content">
                              <h3 class="tpproduct__title"><a href="{{route('product-details', $product->id)}}">{{$product->name}}</a></h3>
                              <div class="tpproduct__priceinfo p-relative">
                                 <div class="tpproduct__priceinfo-list">
                                    <span>Tk {{$product->product_value}}</span>
                                 </div>

                                 {{--
                                 <div class="tpproduct__cart">
                                    <a href="{{ route('add-to-cart', $product->id) }}"><i class="fal fa-shopping-cart"></i>Add To Cart</a>
                                 </div>
                                 --}}
                              </div>
                           </div>
                        </div>
                     </div>
                     @endforeach

                  </div>
               </div>

            </div>
         </div>
      @endif

      @if(count($tonkatsu) > 0)
         <div class="container">
            <div class="row">
               <div class="col-lg-4 col-md-6 col-12">
                  <div class="tpsection mb-40">
                     <h4 class="tpsection__title">Tonkatsu</h4>
                  </div>
               </div>
               
            </div>
            <div class="tab-content" id="nav-tabContent">
               <div class="tab-pane fade show active" id="nav-all" role="tabpanel" aria-labelledby="nav-all-tab">
                  <div class="row row-cols-xxl-4 row-cols-xl-3 row-cols-lg-3 row-cols-md-3 row-cols-sm-2 row-cols-2">

                     @foreach($tonkatsu as $product)
                     <div class="col">
                        <div class=" tpproduct pb-15 mb-30">
                           <div class="tpproduct__thumb p-relative">

                           {{--
                              @if($product->stock_status == "In Stock")
                                 <span class="tpproduct__thumb-discount_in-stock">{{$product->stock_status}}</span>
                              @else
                                 <span class="tpproduct__thumb-discount">{{$product->stock_status}}</span>
                              @endif
                           --}}
                              

                              @if(file_exists(public_path('/uploads/products/'.$product->img_path)) )
                              <a href="{{route('product-details', $product->id)}}">
                                 <img style="max-height: 350px;border:1px solid #ddd;padding:20px" src="{{url('/')}}/uploads/products/{{$product->img_path}}" alt="product-thumb">
                                 {{--<img class="product-thumb-secondary" src="{{url('/')}}/assets/theme/assets/img/product/home-three/product-44.jpg" alt="product-thumb">--}}
                              </a>
                              @else
                                 <a href="{{route('product-details', $product->id)}}">
                                    <img style="max-height: 350px;border:1px solid #ddd;padding:20px" src="{{url('/')}}/uploads/blank.png" alt="product-thumb">
                                 </a>
                              @endif
                              <div class="tpproduct__thumb-action">
                                 <!-- <a class="comphare" href="#"><i class="fal fa-exchange"></i></a> -->
                                 <a class="quckview" href="{{route('product-details', $product->id)}}"><i class="fal fa-eye"></i></a>
                                 {{--<a data-product_id="{{ $product->id }}" class="wishlist" href="#"><i class="fal fa-heart"></i></a>--}}
                              </div>
                           </div>
                           <div class="tpproduct__content">
                              <h3 class="tpproduct__title"><a href="{{route('product-details', $product->id)}}">{{$product->name}}</a></h3>
                              <div class="tpproduct__priceinfo p-relative">
                                 <div class="tpproduct__priceinfo-list">
                                    <span>Tk {{$product->product_value}}</span>
                                 </div>
                                 {{--
                                 <div class="tpproduct__cart">
                                    <a href="{{ route('add-to-cart', $product->id) }}"><i class="fal fa-shopping-cart"></i>Add To Cart</a>
                                 </div>
                                 --}}
                              </div>
                           </div>
                        </div>
                     </div>
                     @endforeach

                  </div>
               </div>

            </div>
         </div>
      @endif

         <div class="container">
            <div class="row">
               <div class="col-lg-4 col-md-6 col-12">
                  <div class="tpsection mb-40">
                     <h4 class="tpsection__title">Sushi</h4>
                  </div>
               </div>
            </div>
            <div class="tab-content" id="nav-tabContent">
               <div class="tab-pane fade show active" id="nav-all" role="tabpanel" aria-labelledby="nav-all-tab">
                  <div class="row row-cols-xxl-4 row-cols-xl-3 row-cols-lg-3 row-cols-md-3 row-cols-sm-2 row-cols-2">

                     @foreach($sushi as $product)
                     <div class="col">
                        <div class=" tpproduct pb-15 mb-30">
                           <div class="tpproduct__thumb p-relative">
                              

                              @if(file_exists(public_path('/uploads/products/'.$product->img_path)) )
                              <a href="{{route('product-details', $product->id)}}">
                                 <img style="max-height: 350px;border:1px solid #ddd;padding:20px" src="{{url('/')}}/uploads/products/{{$product->img_path}}" alt="product-thumb">
                                 {{--<img class="product-thumb-secondary" src="{{url('/')}}/assets/theme/assets/img/product/home-three/product-44.jpg" alt="product-thumb">--}}
                              </a>
                              @else
                                 <a href="{{route('product-details', $product->id)}}">
                                    <img style="max-height: 350px;border:1px solid #ddd;padding:20px" src="{{url('/')}}/uploads/blank.png" alt="product-thumb">
                                 </a>
                              @endif
                              <div class="tpproduct__thumb-action">
                                 <!-- <a class="comphare" href="#"><i class="fal fa-exchange"></i></a> -->
                                 <a class="quckview" href="{{route('product-details', $product->id)}}"><i class="fal fa-eye"></i></a>
                                 {{--<a data-product_id="{{ $product->id }}" class="wishlist" href="#"><i class="fal fa-heart"></i></a>--}}
                              </div>
                           </div>
                           <div class="tpproduct__content">
                              <h3 class="tpproduct__title"><a href="{{route('product-details', $product->id)}}">{{$product->name}}</a></h3>
                              <div class="tpproduct__priceinfo p-relative">
                                 <div class="tpproduct__priceinfo-list">
                                    <span>Tk {{$product->product_value}}</span>
                                 </div>
                                 {{--
                                 <div class="tpproduct__cart">
                                    <a href="{{ route('add-to-cart', $product->id) }}"><i class="fal fa-shopping-cart"></i>Add To Cart</a>
                                 </div>
                                 --}}
                              </div>
                           </div>
                        </div>
                     </div>
                     @endforeach

                  </div>
               </div>

            </div>
         </div>

      @if(count($tempura) > 0)
         <div class="container">
            <div class="row">
               <div class="col-lg-4 col-md-6 col-12">
                  <div class="tpsection mb-40">
                     <h4 class="tpsection__title">Tempura</h4>
                  </div>
               </div>

            </div>
            <div class="tab-content" id="nav-tabContent">
               <div class="tab-pane fade show active" id="nav-all" role="tabpanel" aria-labelledby="nav-all-tab">
                  <div class="row row-cols-xxl-4 row-cols-xl-3 row-cols-lg-3 row-cols-md-3 row-cols-sm-2 row-cols-2">

                     @foreach($tempura as $product)
                     <div class="col">
                        <div class=" tpproduct pb-15 mb-30">
                           <div class="tpproduct__thumb p-relative">
                              

                              @if(file_exists(public_path('/uploads/products/'.$product->img_path)) )
                              <a href="{{route('product-details', $product->id)}}">
                                 <img style="max-height: 350px;border:1px solid #ddd;padding:20px" src="{{url('/')}}/uploads/products/{{$product->img_path}}" alt="product-thumb">
                                 {{--<img class="product-thumb-secondary" src="{{url('/')}}/assets/theme/assets/img/product/home-three/product-44.jpg" alt="product-thumb">--}}
                              </a>
                              @else
                                 <a href="{{route('product-details', $product->id)}}">
                                    <img style="max-height: 350px;border:1px solid #ddd;padding:20px" src="{{url('/')}}/uploads/blank.png" alt="product-thumb">
                                 </a>
                              @endif
                              <div class="tpproduct__thumb-action">
                                 <!-- <a class="comphare" href="#"><i class="fal fa-exchange"></i></a> -->
                                 <a class="quckview" href="{{route('product-details', $product->id)}}"><i class="fal fa-eye"></i></a>
                                 {{--<a data-product_id="{{ $product->id }}" class="wishlist" href="#"><i class="fal fa-heart"></i></a>--}}
                              </div>
                           </div>
                           <div class="tpproduct__content">
                              <h3 class="tpproduct__title"><a href="{{route('product-details', $product->id)}}">{{$product->name}}</a></h3>
                              <div class="tpproduct__priceinfo p-relative">
                                 <div class="tpproduct__priceinfo-list">
                                    <span>Tk {{$product->product_value}}</span>
                                 </div>
                                 {{--
                                 <div class="tpproduct__cart">
                                    <a href="{{ route('add-to-cart', $product->id) }}"><i class="fal fa-shopping-cart"></i>Add To Cart</a>
                                 </div>
                                 --}}
                              </div>
                           </div>
                        </div>
                     </div>
                     @endforeach

                  </div>
               </div>

            </div>
         </div>
      @endif

       {{--
         <div class="container">
            <div class="row">
               <div class="col-lg-4 col-md-6 col-12">
                  <div class="tpsection mb-40">
                     <h4 class="tpsection__title">Battery</h4>
                  </div>
               </div>
               
            </div>
            <div class="tab-content" id="nav-tabContent">
               <div class="tab-pane fade show active" id="nav-all" role="tabpanel" aria-labelledby="nav-all-tab">
                  <div class="row row-cols-xxl-5 row-cols-xl-5 row-cols-lg-3 row-cols-md-3 row-cols-sm-2 row-cols-2">

                     @foreach($battery as $product)
                     <div class="col">
                        <div class=" tpproduct pb-15 mb-30">
                           <div class="tpproduct__thumb p-relative">
                              @if($product->stock_status == "In Stock")
                                 <span class="tpproduct__thumb-discount_in-stock">{{$product->stock_status}}</span>
                              @else
                                 <span class="tpproduct__thumb-discount">{{$product->stock_status}}</span>
                              @endif
                              

                              @if(file_exists(public_path('/uploads/products/'.$product->img_path)) )
                              <a href="{{route('product-details', $product->id)}}">
                                 <img style="max-height: 350px;border:1px solid #ddd;padding:20px" src="{{url('/')}}/uploads/products/{{$product->img_path}}" alt="product-thumb">
                              </a>
                              @else
                                 <a href="{{route('product-details', $product->id)}}">
                                    <img style="max-height: 350px;border:1px solid #ddd;padding:20px" src="{{url('/')}}/uploads/blank.png" alt="product-thumb">
                                 </a>
                              @endif
                              <div class="tpproduct__thumb-action">
                                 <!-- <a class="comphare" href="#"><i class="fal fa-exchange"></i></a> -->
                                 <a class="quckview" href="{{route('product-details', $product->id)}}"><i class="fal fa-eye"></i></a>
                                 <a data-product_id="{{ $product->id }}" class="wishlist" href="#"><i class="fal fa-heart"></i></a>
                              </div>
                           </div>
                           <div class="tpproduct__content">
                              <h3 class="tpproduct__title"><a href="{{route('product-details', $product->id)}}">{{$product->name}}</a></h3>
                              <div class="tpproduct__priceinfo p-relative">
                                 <div class="tpproduct__priceinfo-list">
                                    <span>Tk {{$product->product_value}}</span>
                                 </div>
                                 <div class="tpproduct__cart">
                                    <a href="{{ route('add-to-cart', $product->id) }}"><i class="fal fa-shopping-cart"></i>Add To Cart</a>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     @endforeach

                  </div>
               </div>

            </div>
         </div>
       --}}
       
      </section>
      <!-- product-area-end -->

      <!-- banner-area-start -->
      
      <!-- banner-area-start -->
 
      <section class="banner-area pb-20">
        <div class="tpbanneritem__thumb mb-20">  
        <img style="width:100%;" src="{{url('/')}}/assets/theme/assets/img/banner/banner-bg-05.jpg" alt="banner-img">
        </div>
      </section>
      <!-- banner-area-end -->
      
      <!-- banner-area-end -->



      <!-- white-product-area-start -->
      <section class="white-product-area grey-bg-2 pt-65 pb-70 fix p-relative">
         <div class="container">
            <div class="row">
               <div class="col-md-6 col-sm-6 col-12">
                  <div class="tpsection mb-40">
                     <h4 class="tpsection__title">Top Sell In Month</h4>
                  </div>
               </div>
               <div class="col-md-6 col-sm-6">
                  <div class="tpproductarrow d-flex align-items-center">
                     <div class="tpproductarrow__prv"><i class="far fa-long-arrow-left"></i>Prev</div>
                     <div class="tpproductarrow__nxt">Next<i class="far fa-long-arrow-right"></i></div>
                  </div>
               </div>
            </div>
            <div class="swiper-container product-active">
               <div class="swiper-wrapper">

                  @foreach($top_sell as $sell)
                  <div class="swiper-slide">
                     <div class="whiteproduct">
                        <div class="whiteproduct__thumb">
                           <a href={{ route('product-details', $sell->id) }}><img style="max-height: 350px;" src="{{url('/')}}/uploads/products/{{$sell->img_path}}" alt="product-thumb"></a>
                        </div>
                        <div class="whiteproduct__content d-flex justify-content-between align-items-center">
                           <div class="whiteproduct__text">
                              <h5 class="whiteproduct__title"><a href="shop-details-2.html">{{$sell->name}}</a></h5>
                              <span>Tk. {{$sell->product_value}}</span>
                           </div>
                           <div class="whiteproduct__rating">
                              <i class="fas fa-star"></i>
                              <span>({{$sell->total_sell}})</span>
                           </div>
                        </div>
                     </div>
                  </div>
                  @endforeach


               </div>
            </div>
         </div>
         <div class="banner-shape">
            <img src="{{url('/')}}/assets/theme/assets/img/banner/product-shape-01.png" alt="shape" class="banner-shape-primary">
            <img src="{{url('/')}}/assets/theme/assets/img/banner/product-shape-02.png" alt="shape" class="banner-shape-secondary">
         </div>
      </section>
      <!-- white-product-area-end -->

      <!-- brand-area-start -->

      <!-- brand-area-end -->

      <!-- blog-area-start -->

      <!-- blog-area-end -->
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