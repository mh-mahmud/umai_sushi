@extends('layouts.master')
@php
    use Carbon\Carbon;
@endphp

@section('content')

    <!-- <div class="content d-flex flex-column flex-column-fluid" id="kt_content"> -->

    <!--begin::Toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <!--begin::Container-->
        <div id="kt_toolbar_container" class="container-fluid d-flex flex-stack">
            <!--begin::Page title-->
            <div data-kt-swapper="true" data-kt-swapper-mode="prepend"
                 data-kt-swapper-parent="{default: '#kt_content_container', 'lg': '#kt_toolbar_container'}"
                 class="page-title d-flex align-items-center flex-wrap me-3 mb-5 mb-lg-0">
                <!--begin::Title-->
                <h1 class="d-flex align-items-center text-dark fw-bolder fs-3 my-1">Order Details
                    <!--begin::Separator-->
                    <span class="h-20px border-gray-200 border-start ms-3 mx-2"></span>
                    <!--end::Separator-->
                    <!--begin::Description-->
                    <small class="text-muted fs-7 fw-bold my-1 ms-1">Show Order Details</small>
                    <!--end::Description--></h1>
                <!--end::Title-->
            </div>
            <!--end::Page title-->
            <!--begin::Actions-->
            <div class="d-flex align-items-center py-1">

                <a href="{{ route('orders-index') }}" class="btn btn-sm btn-primary" id="kt_toolbar_primary_button">Order
                    List</a>
                <!--end::Button-->
            </div>
            <!--end::Actions-->
        </div>
        <!--end::Container-->
    </div>
    <!--end::Toolbar-->

    <!--**********************************
                             Tables View
    ***********************************-->
    <div class="container-fluid">

        @if (session('success'))
        <script>
            Swal.fire({
                icon: 'success',
                title: 'Success',
                text: '{{ session('success')}}',
                showConfirmButton: false,
                timer: 1500
            });
        </script>
        @endif

        @if (session('error'))
        <script>
            Swal.fire({
                icon: 'error',
                title: 'Error',
                text: '{{ session('error')}}',
                showConfirmButton: false,
                timer: 1500
            });
        </script>
        @endif
        
        <div class="row">
            <div class="col-xxl-8 mx-auto">
                <!-- <div class="card mb-5"> -->
                <div class="card mt-4">
                    <div class="card-header bg-light bd-cyan">
                        <div class="card-title">
                            <h2>Order Details</h2>
                        </div>
                    </div>
                    <!--begin::Body-->
                    <div class="card-body p-1">

                    <form action="{{ route('orders-update', $order_id) }}" method="POST">
                    @csrf
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
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Payment Status</span>
                            <span>
                                <select name="payment_status" class="form-control">
                                    <option value="">-- Select --</option>
                                    <option {{ $order->payment_status=="NOT PAID" ? "selected" : "" }} value="NOT PAID">NOT PAID</option>
                                    <option {{ $order->payment_status=="PAID" ? "selected" : "" }} value="PAID">PAID</option>
                                    <option {{ $order->payment_status=="PARTIAL PAID" ? "selected" : "" }} value="PARTIAL PAID">PARTIAL PAID</option>
                                </select>
                            </span>
                        </div>
                        </div>

                        <div class="col-md-6">
                        <div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Payment Type</span>
                            <span>
                                <select name="payment_type" class="form-control">
                                    <option value="">-- Select --</option>
                                    <option {{ $order->payment_type=="Cash on Delivery" ? "selected" : "" }} value="Cash on Delivery">Cash on Delivery</option>
                                    <option {{ $order->payment_type=="Online Payment" ? "selected" : "" }} value="Online Payment">Online Payment</option>
                                    <option {{ $order->payment_type=="Card" ? "selected" : "" }} value="Card">Card</option>
                                    <option {{ $order->payment_type=="Bkash" ? "selected" : "" }} value="Bkash">Bkash</option>
                                    <option {{ $order->payment_type=="Bank Transfer" ? "selected" : "" }} value="Bank Transfer">Bank Transfer</option>
                                </select>
                            </span>
                        </div>
                        </div>

                        <div class="col-md-6">
                        <div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Payable Amount</span>
                            <span>
                                <input class="form-control" type="text" name="pay_amount" value="{{ $order->pay_amount }}">
                            </span>
                        </div></div>

                        <div class="col-md-6">
                        <div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Order Note</span><span>{{ $order->order_note }}</span>
                        </div></div>

                        <div class="col-md-6">
                        <div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Delivery Note</span>
                            <span>
                                <input class="form-control" type="text" name="delivery_note" value="{{$order->delivery_note}}">
                            </span>
                        </div></div>

                        <div class="col-md-6">
                        <div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Order Status</span>
                            <span>
                                <select name="order_status" class="form-control">
                                    <option value="">-- Select --</option>
                                    <option {{ $order->order_status=="PROCESSING" ? "selected" : "" }} value="PROCESSING">PROCESSING</option>
                                    <option {{ $order->order_status=="Confirmed" ? "selected" : "" }} value="Confirmed">Confirmed</option>
                                    <option {{ $order->order_status=="Cancel" ? "selected" : "" }} value="Cancel">Cancel</option>
                                </select>
                            </span>
                        </div></div>

                        <div class="col-md-6">
                        <div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Cancel Reason</span>
                            <span><input class="form-control" type="text" name="cancel_reason" value="{{ $order->cancel_reason }}"></span>
                        </div></div>

                        <div class="col-md-6">
                        <div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Delivery Status</span>
                            <span>
                                <select name="delivery_status" class="form-control">
                                    <option value="">-- Select --</option>
                                    <option {{ $order->delivery_status=="Pending" ? "selected" : "" }} value="Pending">Pending</option>
                                    <option {{ $order->delivery_status=="Ready For Shipment" ? "selected" : "" }} value="Ready For Shipment">Ready For Shipment</option>
                                    <option {{ $order->delivery_status=="Cancel By User" ? "selected" : "" }} value="Cancel By User">Cancel By User</option>
                                    <option {{ $order->delivery_status=="Cancel By Admin" ? "selected" : "" }} value="Cancel By Admin">Cancel By Admin</option>
                                    <option {{ $order->delivery_status=="Delivery Done" ? "selected" : "" }} value="Delivery Done">Delivery Done</option>
                                </select>
                            </span>
                        </div>
                        </div>



                        <div class="col-md-6"><div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Possible Delivery Date</span><span>{{date('d M l, Y', strtotime($order->possible_delivery_date))}}</span>
                        </div></div>

                        <div class="col-md-6"><div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Delivery Date</span>
                            <span>
                                <input type="date" class="form-control form-control-sm form-control-solid flatpickr" name="delivery_date" value="{{$order->delivery_date}}">
                            </span>
                            <span>{{ !empty($order->delivery_date) ? date('d M l, Y', strtotime($order->delivery_date)) : ""}}</span>
                        </div></div>

                        <div class="col-md-6"><div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Cancel date</span>
                            <span>
                                <input type="date" class="form-control form-control-sm form-control-solid flatpickr" name="cancel_date" value="{{$order->cancel_date}}">
                            </span>
                            <span>{{ !empty($order->cancel_date) ? date('d M l, Y', strtotime($order->cancel_date)) : ""}}</span>
                        </div></div>

                        <div class="col-md-6"><div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Order Date</span><span>{{date('d M l, Y', strtotime($order->created_at))}}</span>
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

                        <div class="col-md-6">
                            <div class="d-flex align-items-center gap-2 bg-light p-3 mb-1">
                            <span class="fs-6 fw-bolder mb-1 text-gray-900 text-hover-primary w-lg-100px w-xxl-150px">Address 2</span>
                            <span>{{ $order->shipping_address_2 }}</span>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <br>
                            <input class="btn btn-primary" type="submit" name="submit" value="UPDATE" />
                            <br>
                        </div>
                    </div>
                    </form>

                    </div>

                    <!-- table -->
                    <div class="card-header bg-light" style="background-color:#ddd !important;">
                        <div class="card-title">
                            <h4>Product Details</h4>
                        </div>
                    </div>
                    <div class="card-body p-1">
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


    <!-- End Tables View-->


    <!-- </div> -->
    <!--end::Content-->

@endsection
