@extends('front.html.master')
@section('content')
@include('front.html.css')
	<div class="free">
      <!-- breadcrumb-area -->
      <section class="breadcrumb__area pt-60 pb-60 tp-breadcrumb__bg" data-background="{{url('/')}}/assets/theme/assets/img/banner/breadcrumb-01.jpg">
         <div class="container">
            <div class="row align-items-center">
               <div class="col-xl-7 col-lg-12 col-md-12 col-12">
                  <div class="tp-breadcrumb">
                     <div class="tp-breadcrumb__link mb-10">
                        <span class="breadcrumb-item-active"><a href="index.html">Home</a></span>
                        <span>Dashboard</span>
                     </div>
                     <h2 class="tp-breadcrumb__title">Dashboard</h2>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- breadcrumb-area-end -->
          
      <!-- about-area-start -->
      <!-- <section class="about-area pt-80  pb-40"> -->

<div class="pt-80 pb-80">
   <div class="container">
      <div class="bb-customer-page card crop-avatar">
         <div class="container">
            <div class="customer-body">
               <div class="row body-border">
                  <div class="col-md-3 bb-customer-sidebar-wrapper">
                     <div class="bb-profile-sidebar">
                        <div class="bb-profile-user-menu">
                           @include('front.html.sidebar')
                        </div>
                     </div>
                  </div>
                  <div class="col-md-9">
                     <div class="bb-profile-content">
                        <div class="bb-profile-header">
                           <div class="bb-profile-header-title"> Overview </div>
                        </div>
                        <div class="bb-customer-profile-wrapper">
                           <div class="bb-customer-profile">
                              
                              <div class="bb-customer-profile-info">
                                 <h4>Hello <strong>{{ Auth::user()->first_name }}</strong>,</h4>
                                 <p>From your account dashboard you can view your <a class="text-primary" href="{{ route('customer-order-history') }}">recent order history</a>, manage your <a class="text-primary" href="{{ route('customer-shipping-address') }}">shipping and billing addresses</a>, and <a class="text-primary" href="{{ route('customer-profile') }}">edit your password and account details</a>.</p>
                              </div>
                           </div>

                           {{--
                           <div role="alert" class="alert alert-info d-flex align-items-center justify-content-between mt-3 mb-0">
                              <div class="row row-cols-1 row-cols-sm-2 w-100">
                                 <div class="col">
                                    <svg class="icon svg-icon-ti-ti-circle-check" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                       <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                                       <path d="M12 12m-9 0a9 9 0 1 0 18 0a9 9 0 1 0 -18 0"></path>
                                       <path d="M9 12l2 2l4 -4"></path>
                                    </svg>
                                    No orders has been made yet. 
                                 </div>
                                 <div class="col text-start mt-3 mt-sm-0 text-sm-end"><a href="{{ route('all-products') }}" class="text-primary">Browse products</a></div>
                              </div>
                           </div>
                           --}}
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>

      <!-- </section> -->
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