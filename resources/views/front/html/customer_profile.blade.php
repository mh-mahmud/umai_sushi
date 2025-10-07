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

   @if (session('success'))
       <div class="alert alert-success">
           {{ session('success') }}
       </div>
   @endif

   @if (session('error'))
       <div class="alert alert-danger">
           {{ session('error') }}
       </div>
   @endif

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
                           <div class="bb-profile-header-title"> Account Settings </div>
                        </div>
                        <div class="bb-customer-profile-wrapper">
                           <div class="bb-customer-profile">


                           <form action="{{ route('post-customer-profile') }}" method="POST">
                              @csrf

                              <input type="hidden" name="id" value="{{ Auth::user()->id }}">
                             <div class="form-group">
                               <label for="exampleInputEmail1">First Name</label>
                               <input type="text" name="first_name" value="{{ Auth::user()->first_name }}" class="form-control" />
                             </div>

                             <div class="form-group">
                               <label for="exampleInputEmail1">Last Name</label>
                               <input type="text" name="last_name" value="{{ Auth::user()->last_name }}" class="form-control" />
                             </div>

                             <div class="form-group">
                               <label for="exampleInputEmail1">Email</label>
                               <input type="email" name="email" value="{{ Auth::user()->email }}" class="form-control" />
                             </div>

                             <div class="form-group">
                               <label for="exampleInputEmail1">Phone Number</label>
                               <input type="text" readonly value="{{ Auth::user()->phone_number }}" class="form-control" />
                             </div>

                             <div class="form-group">
                               <label for="exampleInputEmail1">City</label>
                               <input type="text" name="city" value="{{ Auth::user()->city }}" class="form-control" />
                             </div>

                             <div class="form-group">
                               <label for="exampleInputEmail1">State</label>
                               <input type="text" name="state" value="{{ Auth::user()->state }}" class="form-control" />
                             </div>

                             <div class="form-group">
                               <label for="exampleInputEmail1">Zip</label>
                               <input type="text" name="zip" value="{{ Auth::user()->zip }}" class="form-control" />
                             </div>

                             

                             <div class="form-group">
                               <label for="exampleInputEmail1">Address</label>
                               <textarea class="form-control" name="address" cols="30" rows="5">{{ Auth::user()->address }}</textarea>
                             </div><br>



                             <button type="submit" class="btn btn-danger">Submit</button>
                           </form>

                           </div><br><br>

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