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
                           <div class="bb-profile-header-title"> Order Details </div>
                        </div>
                        <div class="bb-customer-profile-wrapper">

                    <!--begin::Body-->
                    <div class="card-body p-1">

                    <div class="row">
                        <div class="col-md-6"><div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Order No</span><span>{{ $order->custom_order_id }}</span>
                        </div></div>

                        <div class="col-md-6">
                        <div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Order Phone</span><span>{{ $order->order_phone_number }}</span>
                        </div></div>
                        <div class="col-md-6">
                        <div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Total Price</span><span>{{ $order->total_price }}</span>
                        </div></div>

                        <div class="col-md-6">
                        <div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Discount</span><span>{{ $order->discount }}</span>
                        </div></div>

                        <div class="col-md-6">
                        <div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Final Price</span><span>{{ $order->final_price }}</span>
                        </div></div>

                        <div class="col-md-6">
                        <div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Coupon</span><span>{{ $order->coupon }}</span>
                        </div></div>

                        <div class="col-md-6">
                        <div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Payment Status</span><span>{{ $order->payment_status }}</span>
                        </div></div>

                        <div class="col-md-6">
                        <div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Pay Amount</span><span>{{ $order->pay_amount }}</span>
                        </div></div>

                        <div class="col-md-6">
                        <div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Order Note</span><span>{{ $order->order_note }}</span>
                        </div></div>

                        <div class="col-md-6">
                        <div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Order Status</span><span>{{ $order->order_status }}</span>
                        </div></div>

                        <div class="col-md-6">
                        <div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Cancel Reason</span><span>{{ $order->cancel_reason }}</span>
                        </div></div>


                        <div class="col-md-6"><div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Possible Delivery Date</span><span>{{ $order->possible_delivery_date }}</span>
                        </div></div>

                        <div class="col-md-6"><div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Delivery Date</span><span>{{ $order->delivery_date }}</span>
                        </div></div>

                        <div class="col-md-6"><div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Cancel date</span><span>{{ $order->cancel_date }}</span>
                        </div></div>

                        <div class="col-md-6"><div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Order Date</span><span>{{ $order->created_at }}</span>
                        </div></div>

                        <div class="col-md-6"><div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Client Name</span><span>{{ $order->first_name . ' ' . $order->last_name }}</span>
                        </div></div>

                        <div class="col-md-6"><div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Company Name</span><span>{{ $order->company_name }}</span>
                        </div></div>

                        <div class="col-md-6"><div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Client Email</span><span>{{ $order->email }}</span>
                        </div></div>

                        <div class="col-md-6"><div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Mobile</span>
                            <span>{{ $order->mobile }}</span>
                        </div></div>

                        <div class="col-md-6"><div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">City</span>
                            <span>{{ $order->city }}</span>
                        </div></div>

                        <div class="col-md-6"><div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">State</span>
                            <span>{{ $order->state }}</span>
                        </div></div>

                        <div class="col-md-6"><div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Zip</span>
                            <span>{{ $order->zip }}</span>
                        </div></div>

                        <div class="col-md-6"><div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Address</span>
                            <span>{{ $order->shipping_address }}</span>
                        </div></div>

                        <div class="col-md-6"><div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Address 2</span>
                            <span>{{ $order->shipping_address_2 }}</span>
                        </div></div>


                    </div>

                    </div>

                    <!-- table -->
                    <div class="card-header bg-light" style="background-color:#ddd !important;">
                        <div class="card-title">
                            <h4>Product Details</h4>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Product</th>
                                    <th>Image</th>
                                    <th>Code</th>
                                    <th>Qty</th>
                                    <th>Unit Price</th>
                                    <th>Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($orderDetails as $key => $detail)
                                <tr>
                                    <td>{{ $key + 1 }}</td>
                                    <td>{{ $detail->product->name }}</td>
                                    <td style="border:1px solid #ddd;width:100px;"><img style="width: 100%;" src="{{ asset('uploads/products/' . $detail->product->img_path) }}"></td>
                                    <td>{{ $detail->product->product_code }}</td>
                                    <td>{{ $detail->quantity }}</td>
                                    <td>{{ $detail->unit_price }}</td>
                                    <td>{{ $detail->quantity * $detail->unit_price }}</td>
                                </tr>
                                @endforeach
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td colspan="6" class="text-end fw-bold">Sub Total</td>
                                    <td>{{ $order->final_price }}</td>
                                </tr>
                                <tr>
                                    <td colspan="6" class="text-end fw-bold">Discount (%)</td>
                                    <td>{{ number_format($order->discount, 1) }}%</td>
                                </tr>
                                <tr>
                                    <td colspan="6" class="text-end fw-bold">Delivery Charge</td>
                                    <td>{{ $order->delivery_charge }}</td>
                                </tr>
                                <tr>
                                    <td colspan="6" class="text-end fw-bold">Payable Amount</td>
                                    <td>{{ $order->final_price }}/-</td>
                                </tr>
                                <!-- <tr>
                                    <td colspan="6" class="text-end fw-bold text-primary">Due Amount</td>
                                    <td class="text-primary">{{ $order->due_amount }}</td>
                                </tr> -->
                            </tfoot>
                        </table>
                    </div>
                    <!-- end table -->


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