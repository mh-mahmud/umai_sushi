<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\OrderService;
use App\Models\Product;
use App\Models\Customer;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;
use App\Helpers\Helper;

class OrderController extends Controller
{
    protected $orderService;

    public function __construct(OrderService $orderService)
    {
        $this->orderService = $orderService;
    }

    public function index()
    {
        $orders = $this->orderService->getAllOrders();
        return view('orders.index', compact('orders'));
    }

    public function create()
    {
        
        $products = Product::all();
        //$products = Product::select('id', 'name', 'description', 'product_value')->get();
        $customers = Customer::all();

        return view('orders.create', compact('products', 'customers'));
    }

    public function store(Request $request)
    {
       
        $validator = Validator::make($request->all(), [
            'customer_id' => 'required|exists:customers,id',
            'mobile_number' => 'required|string',
            'area' => 'required|string',
            'products.*.product_id' => 'required|exists:products,id',
            'products.*.quantity' => 'required|integer|min:1',
            'products.*.unit_price' => 'required|numeric|min:0',
            'products.*.product_color' => 'nullable|string',
            'products.*.product_size' => 'nullable|string',
        ]);
    
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
    
        $this->orderService->createOrder($request);
        Helper::storeLog("Order created successfully", "Order", "Create Order", null,null);
        return redirect()->route('orders-index')->with('success', 'Order created successfully.');
    }

    public function show_backup($id)
    {
        $order = $this->orderService->getOrder($id);
        return view('orders.show', compact('order'));
    }

    public function show($id)
    {
        $data = $this->orderService->getOrder($id);
        return view('orders.show', [
            'order' => $data['order'],
            'order_id' => $id,
            'orderDetails' => $data['orderDetails'],
        ]);
    }


    public function edit($id)
    {
        $order = $this->orderService->getOrder($id);
        return view('orders.edit', compact('order'));
    }

    public function update(Request $request, $id)
    {
        $this->orderService->updateOrder($id, $request);
        return redirect()->back()->with('success', 'Order updated successfully!');
    }

    public function destroy($id)
    {
        try {
            $this->orderService->deleteOrder($id);
            return redirect()->route('orders-index')->with('success', 'Order deleted successfully!');
        } catch (\Exception $e) {
           return redirect()->back()->with('error', $e->getMessage());
        }

    }

    // searech for invoice

    public function search(Request $request)
    {
        $searchTerm = trim($request->input('search'));
        if (empty($searchTerm)) {
            return redirect()->route('orders-index')->with('error', 'Search field cannot be blank.');
        }
        $orders = $this->orderService->searchOrders($request);
        return view('orders.index', compact('orders'));
    }

    
}
