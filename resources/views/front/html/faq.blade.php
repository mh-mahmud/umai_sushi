@extends('front.html.master')
@section('content')

	<div class="free">
      <!-- breadcrumb-area -->
      <section class="breadcrumb__area pt-60 pb-60 tp-breadcrumb__bg" data-background="{{url('/')}}/assets/theme/assets/img/banner/breadcrumb-01.jpg">
         <div class="container">
            <div class="row align-items-center">
               <div class="col-xl-7 col-lg-12 col-md-12 col-12">
                  <div class="tp-breadcrumb">
                     <div class="tp-breadcrumb__link mb-10">
                        <span class="breadcrumb-item-active"><a href="{{ route('index') }}">Home</a></span>
                        <span>FAQ</span>
                     </div>
                     <h2 class="tp-breadcrumb__title">FAQs</h2>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- breadcrumb-area-end -->
          
      <!-- about-area-start -->
      <section class="about-area pt-80  pb-40">
         <div class="container">
            <div class="tpabout__inner-logo p-relative">
               <div class="row">
                  Sorry, No faq to show. We will update this section soon.
               </div>
               <!-- <div class="tpabout__logo">
                  <a href="index.html"><img src="{{url('/')}}/assets/theme/assets/img/banner/about-img-3.png" alt=""></a>
               </div> -->
            </div>


         </div>
      </section>
      <!-- about-area-end -->

	</div>

@endsection
@section('custom_js')
   <script type="text/javascript">
      $(document).ready(function() {
         $('.cat-menu__category .category-menu').css('display', 'none');
      })
   </script>
@endsection