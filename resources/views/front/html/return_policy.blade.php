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
                        <span>Policy</span>
                     </div>
                     <h2 class="tp-breadcrumb__title">Return policy</h2>
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
                  <div class="col-lg-6">
                     <div class="tpabout__inner-thumb mb-40">
                        <img src="{{url('/')}}/assets/theme/assets/img/logo/page.jpg" alt="">
                     </div>
                  </div>
                  <div class="col-lg-6">
                     <div class="tpabout__inner-title-area mt-25 mb-45">
                        <h4 class="tpabout__inner-sub-title">Policies</h4>
                        <h4 class="tpabout__inner-title">Return and Refund policy</h4>
                     </div>

                     <div class="tpabout__inner-story mb-40" style="padding-right:30px;border-right: 1px solid #ddd;">
                        <p>
                           If you are not satisfied with your purchase products, You may return the items in the new condition that they were received by you in their original packaging within 24 hours of receiving the items. You must notify the return issue within 12 hours over WhatsApp/ Facebook / Email / Call with reason. We will contact you to return the parcel after confirmation by you.

                        </p>
                        <p style="margin-top: 60px;padding-left:10px !important;">
                           <ul>
                              <li>You must contact us within 12 hours of receiving the items.</li>
                              <li>You must show the "Carclinic" money reciept that you have received.</li>
                              <li>In the case that there are missing, damaged, or incorrect packages, please retain the item, indicate the problem on the Delivery Note.</li>
                              <li>We request for you to WhatsApp or email pictures of damaged or defective items and also the packaging boxes, So we can understand how the damage happened and prevent future items from similar damages.</li>
                              <li>For minor damages, We may send repair parts to you and ask you to repair the damages.</li>
                              <li>Damage that makes by the customer will not return. </li>
                              <li>Your refund will be issued after we received and inspected the items.</li>
                              <li>For the items that shipped free, We will deduct the original shipping charges from your refund.</li>
                           </ul>
                        </p>

                     </div>
                  </div>
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