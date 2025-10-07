<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Brand;
use App\Models\Product;
use App\Models\Slider;
use App\Models\Category;
use App\Models\Cart;
use App\Models\BillingAddress;
use App\Models\Blog;
use App\Models\User;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Career;
use App\Models\Wishlist;
use App\Models\Settings;
use Auth;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use App\Helpers\Helper;

class FrontController extends Controller
{
    public function html() {

        $brands = Brand::where('status', 1)->get(['brand_name', 'brand_image']);
        $blogs = Blog::where('status', 1)->orderBy('created_at', 'desc')->limit(4)->get();
        // dd($blogs);
        $sliders = Slider::where('status', 1)->get(['slider_title', 'slider_image']);
        $tyres = Product::where('status', 1)->where('category_id', 10)->limit(4)->get();
        $engine_oil = Product::where('status', 1)->where('category_id', 13)->limit(4)->get();
        $break_shoe = Product::where('status', 1)->where('category_id', 20)->limit(4)->get();
        $battery = Product::where('status', 1)->where('category_id', 25)->limit(4)->get();
        $top_sell = Product::where('status', 1)->orderBy('total_sell', 'desc')->limit(5)->get();

        // car care items
        $child_ids = Category::where('parent_id', 6)->pluck('id');
        $car_cares = [];

        // collect settings data
        $settings = Settings::first();

        if($child_ids->isNotEmpty()) {
           $car_cares = Product::where('status', 1)->whereIn('category_id', $child_ids)->orderBy('created_at', 'asc')->paginate(20);
        }

        return view('front.html.index', compact('brands', 'tyres', 'sliders', 'top_sell', 'engine_oil', 'battery', 'break_shoe', 'blogs', 'car_cares', 'settings'));
    }

    public function blogs() {
        $blogs = Blog::where('status', 1)->orderBy('created_at', 'desc')->paginate(2);
        return view('front.html.blogs', compact('blogs'));
    }

    public function blog_details($id) {
        $blog = Blog::findOrFail($id);
        return view('front.html.blog_details', compact('blog'));
    }

    public function careers() {
        $careers = Career::where('status', 1)->orderBy('created_at', 'desc')->paginate(2);
        return view('front.html.career', compact('careers'));
    }

    public function career_details($id) {
        $career = Career::findOrFail($id);
        return view('front.html.career_details', compact('career'));
    }

    public function all_products() {
        // $products = Product::orderBy('created_at', 'desc')->paginate(config('constants.ROW_PER_PAGE'));
        $products = Product::where('status', 1)->orderBy('created_at', 'asc')->paginate(30);
        $count = Product::where('status', 1)->count();
        $page = "Products";
        return view('front.html.products', compact('products', 'count', 'page'));
    }

    public function customer_dashboard() {
        return view('front.html.customer_dashboard');
    }

    public function customer_shipping_address() {
        return view('front.html.customer_shipping_address');
    }

    public function customer_profile() {
        return view('front.html.customer_profile');
    }

    public function post_customer_profile(Request $request) {

        $user = User::findOrFail($request->id);
        $user->first_name = $request->first_name;
        $user->last_name = $request->last_name;
        $user->email = $request->email;
        $user->city = $request->city;
        $user->state = $request->state;
        $user->zip = $request->zip;
        $user->address = $request->address;
        $user->save();
        return redirect()->back()->with('success', 'Profile updated successfully');
    }

    public function customer_logout(Request $request) {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/')->with('success', 'You have successfully logged out.');
    }

    public function product_details($id) {
        $product = Product::findOrFail($id);
        return view('front.html.product_details', compact('product'));
    }

    public function contact_page() {
        return view('front.html.contacts');
    }

    public function about_page() {
        $settings = Settings::first();
        $data['data'] = $settings;
        return view('front.html.about', $data);
    }

    public function terms_and_conditions() {
        return view('front.html.terms_and_conditions');
    }

    public function return_policy() {
        return view('front.html.return_policy');
    }

    public function faq() {
        return view('front.html.faq');
    }


    // public function track_your_order() {
    //     return view('front.html.order_track');
    // }

    public function product_category_wise($category) {

        $cat = explode("-", $category);
        $cat = implode(" ", $cat);
        $get_cat = Category::where('category_name', $cat)->first();
        if($get_cat==null) {
            dd("No Category Found");
        }
        $cat_id = $get_cat->id;

        // is this category is a parent
        $child_ids = Category::where('parent_id', $cat_id)->pluck('id');
        if($child_ids->isEmpty()) {
           $products = Product::where('status', 1)->where('category_id', $cat_id)->orderBy('created_at', 'asc')->paginate(30); 
        }
        else {
            $products = Product::where('status', 1)->whereIn('category_id', $child_ids)->orderBy('created_at', 'asc')->paginate(30); 
        }

        
        $count = Product::where('status', 1)->where('category_id', $cat_id)->count();
        $page = "Category: " . ucfirst($cat);
        return view('front.html.products', compact('products', 'count', 'page'));
    }

    public function product_brand_wise($brand_name) {
        $brand = explode("-", $brand_name);
        $brand = implode(" ", $brand);
        $get_brand = Brand::where('brand_name', $brand)->first();
        if($get_brand==null) {
            dd("No brand found on this name");
        }
        $brand_id = $get_brand->id;
        $products = Product::where('status', 1)->where('brand_id', $brand_id)->orderBy('created_at', 'asc')->paginate(30);
        $count = Product::where('status', 1)->where('brand_id', $brand_id)->count();
        $page = "Brand: " . ucfirst($brand_name);
        return view('front.html.products', compact('products', 'count', 'page'));
    }

    public function add_to_cart($product_id) {

            // return Session::forget('car-clinic-visitor');
            // dd(Session::get('car-clinic-visitor'));
        if(Session::get('car-clinic-visitor')==null) {

            $session_value = str_pad(mt_rand(1, 9999999999999), 10);
            Session::put('car-clinic-visitor', $session_value);
        }

        $cookie_id = Session::get('car-clinic-visitor');
        $product_id = $product_id;
        $user_id = Auth::user()==null ? null : Auth::user()->id;
        $product_data = Product::find($product_id);
        $session_id = Auth::user()==null ? $cookie_id : null;
        $product_quantity = 1;
        $discount = 0;

        // check if product is already in cart
        $chk_cart = !empty(Auth::user()) ? Cart::where('user_id', $user_id)->where('product_id', $product_id)->first() : Cart::where('session_id', $session_id)->where('product_id', $product_id)->first();
        // dd($chk_cart);
        if(!empty($chk_cart)) {
            $chk_cart->quantity += 1;
            $chk_cart->total_price = $chk_cart->quantity*$product_data->product_value;
            $chk_cart->update();
        }
        else {

            $cart = new Cart;
            $cart->user_id = $user_id;
            $cart->session_id = $session_id;
            $cart->product_id = $product_id;
            $cart->product_image = $product_data->img_path;
            $cart->product_name = $product_data->name;
            $cart->unit_price = $product_data->product_value;
            $cart->quantity = $product_quantity;
            $cart->total_price = $product_quantity*$product_data->product_value;
            $cart->discount = $discount;
            $cart->final_price = $cart->total_price - $discount;
            $cart->save();

        }
        return redirect()->route('add-to-cart-details')->with('success', 'Product added to the cart successfully.');
    }

    public function add_to_cart_details() {
        $session_id = Session::get('car-clinic-visitor');
        $carts = [];

        if(Auth::user() == null && $session_id!=null) {
            $carts = Cart::where('session_id', $session_id)->get();
        }
        else if(Auth::user() != null) {
            $user_id = Auth::user()->id;
            $carts = Cart::where('user_id', $user_id)->get();
        }

        return view('front.html.add_to_cart', compact('carts'));
    }

    public function setCookie()
    {
        $cookie_value = str_pad(mt_rand(1, 9999999999999), 10);
        setcookie("car-clinic-visitor", $cookie_value, time() + 36000, '/');
        return;
    }

    public function getCookie(Request $request)
    {
        $user = $request->cookie('user');
        return response("User: $user");
    }

    public function checkout_page() {

        if(Auth::user() && Auth::user()->user_type=='admin') {
            return redirect()->back()->with('error', 'You are logged in as an admin. As a system user, you can not checkout.');
        }

        $session_id = Session::get('car-clinic-visitor');
        $carts = [];
        if(Auth::user()) {
            $carts = Cart::where('user_id', Auth::user()->id)->get();
        }
        else if($session_id != null) {
            $carts = Cart::where('session_id', $session_id)->get();
        }
        
        return view('front.html.checkout_page', compact('carts', 'session_id'));
    }

    public function track_your_order() {
        return view('front.html.track_your_order');
    }

    public function post_track_your_order(Request $request) {
        $request->validate([
            'phone_number' => 'required',
            'order_id' => 'required'
        ]);

        $chk_data = Order::where('custom_order_id', $request->order_id)->where('order_phone_number', $request->phone_number)->first();

        if($chk_data==null) {
            return redirect()->back()->with('error', 'Invalid order data');
        }

        $order_id = $chk_data->id;
        $lists = OrderDetail::with('products')->where('order_id', $order_id)->get();
        // dd($lists);

        return view('front.html.post_track_your_order', compact('lists', 'chk_data'));
    }

    public function my_wishlist() {
        if(Auth::user()) {
            $lists = Wishlist::where('user_id', Auth::user()->id)->get();
        }
        else {
            $lists = Wishlist::where('session_id', Session::get('car-clinic-visitor'))->get();
        }
        // dd(Session::get('car-clinic-visitor'));
        
        return view('front.html.my_wishlist', compact('lists'));
    }

    public function remove_wishlist($id) {
        if(Auth::user()) {
            $lists = Wishlist::where('user_id', Auth::user()->id)->where('id', $id)->delete();
        }
        else {
            $lists = Wishlist::where('session_id', Session::get('car-clinic-visitor'))->where('id', $id)->delete();
        }
        return redirect()->route('my-wishlist')->with('success', 'Item deleted from wishlist successfully');
    }

    public function remove_from_cart($id) {
        if(Auth::user()) {
            $lists = Cart::where('user_id', Auth::user()->id)->where('id', $id)->delete();
        }
        else {
            $lists = Cart::where('session_id', Session::get('car-clinic-visitor'))->where('id', $id)->delete();
        }
        return redirect()->route('add-to-cart-details')->with('success', 'Item deleted from cart successfully');
    }

    public function add_wishlist(Request $request)
    {
        if(Session::get('car-clinic-visitor')==null) {
            $session_value = str_pad(mt_rand(1, 9999999999999), 10);
            Session::put('car-clinic-visitor', $session_value);
        }
        $request->validate([
            'product_id' => 'required|exists:products,id', // Validate the product ID
        ]);

        // Check if the product is already in the wishlist
        if(Auth::user()) {
            $exists = Wishlist::where('user_id', auth()->id())->where('product_id', $request->product_id)->exists();
        }
        else {
            $exists = Wishlist::where('session_id', Session::get('car-clinic-visitor'))->where('product_id', $request->product_id)->exists();
        }

        if ($exists) {
            return response()->json([
                'status' => 'error',
                'message' => 'This product is already in your wishlist!',
            ]);
        }

        // Add the product to the wishlist
        $product_data = Product::findOrFail($request->product_id);
        Wishlist::create([
            'user_id' => !empty(auth()->id()) ? auth()->id() : null,
            'session_id' => !empty(Session::get('car-clinic-visitor')) ? Session::get('car-clinic-visitor') : null,
            'product_id' => $request->product_id,
            'unit_price' => $product_data->product_value,
            'product_image' => $product_data->img_path,
            'product_name' => $product_data->name
        ]);

        return response()->json([
            'status' => 'success',
            'message' => 'Product added to wishlist!',
        ]);
    }

    public function customer_order_history() {
        $id = Auth::user()->id;
        $orders = Order::join('billing_address', 'orders.billing_address_id', '=', 'billing_address.id')
            ->select('orders.id as lukaku', 'orders.*', 'billing_address.*')
            ->where('orders.user_id', $id)
            ->orderBy('orders.id', 'desc')
            ->paginate(config('constants.ROW_PER_PAGE'));
        // dd($orders);
        return view('front.html.order_history', compact('orders'));
    }

    public function customer_order_details($order_id) {
        $order = Order::join('billing_address', 'orders.billing_address_id', '=', 'billing_address.id')
            ->select('orders.*', 'orders.id as lukaku', 'billing_address.*')
            ->where('orders.custom_order_id', $order_id)
            ->first();
        $orderDetails = OrderDetail::with('product')->where('order_id', $order->lukaku)->get();
        return view('front.html.customer_order_details', compact('order', 'orderDetails'));
    }

    public function go_checkout(Request $request) {
        // dd($request->all());
        $data = $request->all();
        // dd($data['cart_id']);
        for($i=0; $i<count($data['cart_id']); $i++) {
            $cart = Cart::findorfail($data['cart_id'][$i]);
            $cart->quantity = $data['quantity'][$i];
            $cart->total_price = $cart->unit_price * $data['quantity'][$i];
            $cart->final_price = $cart->unit_price * $data['quantity'][$i];
            $cart->save();
            // dd($cart);
        }
        return redirect()->route('checkout');
    }

    public function checkout_store(Request $request) {

        if(Auth::user()) {
            $carts = Cart::where('user_id', Auth::user()->id)->get();
        }
        else {
            $carts = Cart::where('session_id', $request->cart_session_id)->get();
        }

        DB::beginTransaction();
        try {
            $ship = new BillingAddress();
            $ship->user_id = (Auth::user() != null) ? Auth::user()->id : null;
            $ship->session_id = (Auth::user() == null) ? $request->cart_session_id : null;
            $ship->first_name = $request->first_name;
            $ship->last_name = $request->last_name;
            $ship->company_name = $request->company_name;
            $ship->email = $request->email;
            $ship->mobile = $request->mobile;
            $ship->city = $request->city;
            $ship->state = $request->state;
            $ship->zip = $request->zip;
            $ship->shipping_address = $request->shipping_address;
            $ship->shipping_address_2 = $request->shipping_address_2;
            $ship->save();

            // dd($ship);

            // save to order table
            $order = new Order();
            $order->user_id = (Auth::user()!=null) ? Auth::user()->id : null;
            $order->session_id = (Auth::user() == null) ? $request->cart_session_id : null;
            $order->billing_address_id = $ship->id;
            $order->custom_order_id = $this->generateUniqueOrderId();
            $order->order_phone_number = $request->mobile;
            $order->total_price = $request->total_price;
            $order->discount = $request->discount;
            $order->final_price = $request->total_price - $request->discount;
            // $order->coupon = $request->coupon;
            $order->payment_status = "NOT PAID";
            $order->order_note = $request->order_note;
            $order->order_status = "PROCESSING";
            $order->payment_type = "Cash on Delivery";
            $order->delivery_charge = $request->shipping;
            $order->possible_delivery_date = date("Y-m-d h:i:s", time() + 86400 + 86400);
            $order->save();


            // add to details page
            foreach($carts as $cart) {
                OrderDetail::create([
                    'user_id' => (Auth::user()!=null) ? Auth::user()->id : null,
                    'session_id' => (Auth::user() == null) ? $request->cart_session_id : null,
                    'product_id' => $cart->product_id,
                    'order_id' => $order->id,
                    'quantity' => $cart->quantity,
                    'unit_price' => $cart->unit_price,
                    'total' => $cart->total_price
                ]);
            }

            // destroy the cart
            if(Auth::user()) {
                Cart::where('user_id', Auth::user()->id)->delete();
            }
            else {
                Cart::where('session_id', $request->cart_session_id)->delete();
                Session::forget('car-clinic-visitor');
            }


            DB::commit();

            // send message
            $messages = "Welcome to carclinic.com.bd, Thanks for your order. " . $order->custom_order_id . " is your order number. Please save your order number for future tracking.";
            $phone = "88".$request->mobile . "";
            $response = Helper::send_sms($phone, $messages);
            $last_order = Order::findOrFail($order->id);
            $last_order->sms_response = $response;
            $last_order->save();

            return redirect()->route('checkout')->with('success', "Thanks for your order.Order submitted successfully. Your order number is " . $order->custom_order_id . " Please save your order number for future tracking");
        } catch (\Exception $e) {
            DB::rollBack();
            return 'Transaction failed: ' . $e->getMessage();
        }
        

    }

    public function generateUniqueOrderId($length = 6) {
        $characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
        $orderId = '';

        for ($i = 0; $i < $length; $i++) {
            $orderId .= $characters[random_int(0, strlen($characters) - 1)];
        }

        // Prepend a timestamp for uniqueness (optional)
        // return time() . $orderId;
        return $orderId;
    }


}
