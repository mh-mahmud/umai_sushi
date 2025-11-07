<?php

namespace App\Services;
use App\Models\Product;
use Exception;
use Illuminate\Support\Facades\Auth;
use App\Helpers\Helper;
use DB;

class ProductService
{
    public function productList($request)
    {
        /*$sql = Product::with('category')->query();
        $data = $request->all();
        if(!empty($data["search"])) {
            $sql->where('name','like', '%' . $data["search"] . '%');

        }
        if (isset($data['paginate']) && $data['paginate'] == false) {
            return  $sql->orderBy('id', 'DESC')->get();

        } else {
            return  $sql->orderBy('id', 'DESC')->paginate(config('constants.ROW_PER_PAGE'));

        }*/

        $sql = Product::with('category');
        $data = $request->all();

        if (!empty($data["search"])) {
            $sql->where('name', 'like', '%' . $data["search"] . '%');
        }

        if (isset($data['paginate']) && $data['paginate'] == false) {
            return $sql->orderBy('id', 'DESC')->get();
        } else {
            return $sql->orderBy('id', 'DESC')->paginate(config('constants.ROW_PER_PAGE'));
        }

    }

    public function product_stock($request) {

        $sql = Product::with('category');
        $data = $request->all();

        if (!empty($data["search"])) {
            $sql->where('name', 'like', '%' . $data["search"] . '%');
        }

        if (isset($data['paginate']) && $data['paginate'] == false) {
            return $sql->orderBy('id', 'DESC')->get();
        } else {
            return $sql->orderBy('id', 'DESC')->paginate(config('constants.ROW_PER_PAGE'));
        }

    }

    public function productStore($request)
    {

        $request->validate([
            'name' => 'required|unique:products|max:191',
            'img_path' => 'required|image|mimes:avif,jpeg,png,jpg,gif,webp|max:1048',

        ]);
        $data = $request->all();


        // upload main image
        $fileNameToStore = '';
        if ($request->hasFile('img_path')) {
            $fileNameWithExt = $request->file('img_path')->getClientOriginalName();
            $fileName = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
            $extension = $request->file('img_path')->getClientOriginalExtension();
            $fileNameToStore = $fileName.'_'.time().'.'.$extension;
            $request->file('img_path')->move(getcwd().'/public/uploads/products', $fileNameToStore);
        }

        try {
            return  DB::transaction(function () use ($data, $fileNameToStore) {
                $dataObj                        = new Product();
                $dataObj->name                  = $data['name'];
                $dataObj->product_code          = 1010;
                $dataObj->category_id           = 1;
                $dataObj->brand_id              = 1;
                $dataObj->product_type          = "PHYSICAL";
                $dataObj->product_cost          = 100;
                $dataObj->product_value         = 100;
                $dataObj->discount_price        = 100;
                $dataObj->description           = "sdfds";
                $dataObj->key_features          = "";
                $dataObj->club_point            = 0;
                $dataObj->product_specification = "sdvsdfv";
                $dataObj->img_path              = $fileNameToStore;
                $dataObj->stock_status          = 1;
                $dataObj->stock_quantity        = 100;
                //$dataObj->max_purchase_limit    = $data['max_purchase_limit'];
                $dataObj->max_purchase_limit    = 10;
                $dataObj->status                = 1;
                $dataObj->created_by            = Auth::id();
                $dataObj->save();

                Helper::storeLog($data['name'], "Products", "Add Product {$data['name']}", "Added");

                return (object)[
                    'status'                 => 201,
                    'info'                   => $dataObj->id
                ];
            });
        } catch (Exception $e) {
            dd($e->getMessage());
            return (object)[
                'status'             => 424,
                'error'              => $e->getMessage()
            ];
        }
    }

    public function productUpdate($request, $id)
    {

        $request->validate([
            'name' => 'required|unique:products,name,' . $request->id,
            'product_code' => 'required|max:20',
            'product_type' => 'required',
            'category_id' => 'required',
            'brand_id' => 'required',
            'description' => 'required',
            'stock_quantity' => 'required|numeric',
            'img_path' => 'image|mimes:avif,jpeg,png,jpg,gif,webp|max:1048',
            'img_path_2' => 'image|mimes:avif,jpeg,png,jpg,gif,webp|max:1048',
            'img_path_3' => 'image|mimes:avif,jpeg,png,jpg,gif,webp|max:1048',
            'img_path_4' => 'image|mimes:avif,jpeg,png,jpg,gif,webp|max:1048',
            'img_path_5' => 'image|mimes:avif,jpeg,png,jpg,gif,webp|max:1048',
            'img_path_6' => 'image|mimes:avif,jpeg,png,jpg,gif,webp|max:1048',
            'product_cost' => [
                'nullable',
                'numeric',
                'regex:/^\d{1,11}(\.\d{1,2})?$/'
            ],
            'product_value' => [
                'required',
                'numeric',
                'regex:/^\d{1,11}(\.\d{1,2})?$/'
            ],
        ], [
            'product_cost.regex' => 'The product cost must have at most 11 digits before the decimal point and up to 2 digits after the decimal point.',
            'product_value.regex' => 'The product value must have at most 11 digits before the decimal point and up to 2 digits after the decimal point.',
        ]);


        $data = $request->all();
        $fileNameToStore = '';
        if ($request->hasFile('img_path')) {
            $fileNameWithExt = $request->file('img_path')->getClientOriginalName();
            $fileName = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
            $extension = $request->file('img_path')->getClientOriginalExtension();
            $fileNameToStore = $fileName.'_'.time().'.'.$extension;
            $request->file('img_path')->move(getcwd().'/public/uploads/products', $fileNameToStore);
            
        }

        $fileNameToStore_2 = '';
        if ($request->hasFile('img_path_2')) {
            $fileNameWithExt = $request->file('img_path_2')->getClientOriginalName();
            $fileName = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
            $extension = $request->file('img_path_2')->getClientOriginalExtension();
            $fileNameToStore_2 = $fileName.'_'.time().'.'.$extension;
            $request->file('img_path_2')->move(getcwd().'/public/uploads/products', $fileNameToStore_2);
        }

        $fileNameToStore_3 = '';
        if ($request->hasFile('img_path_3')) {
            $fileNameWithExt = $request->file('img_path_3')->getClientOriginalName();
            $fileName = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
            $extension = $request->file('img_path_3')->getClientOriginalExtension();
            $fileNameToStore_3 = $fileName.'_'.time().'.'.$extension;
            $request->file('img_path_3')->move(getcwd().'/public/uploads/products', $fileNameToStore_3);
        }

        try {
            return  DB::transaction(function () use ($data, $fileNameToStore, $fileNameToStore_2, $fileNameToStore_3, $request, $id) {
                $dataObj                        = Product::findOrFail($id);;
                $dataObj->name                  = $data['name'];
                $dataObj->product_code          = $data['product_code'];
                $dataObj->category_id           = $data['category_id'];
                $dataObj->brand_id              = $data['brand_id'];
                $dataObj->product_type          = $data['product_type'];
                $dataObj->product_cost          = $data['product_cost'];
                $dataObj->product_value         = $data['product_value'];
                $dataObj->discount_price         = $data['discount_price'];
                $dataObj->description           = $data['description'];
                //$dataObj->key_features          = $data['key_features'];
                //$dataObj->club_point            = $data['club_point'];
                $dataObj->product_specification = $data['product_specification'];
                $dataObj->img_path              = $request->hasFile('img_path') ? $fileNameToStore : $dataObj->img_path;
                $dataObj->img_path_2            = $request->hasFile('img_path_2') ? $fileNameToStore_2 : $dataObj->img_path_2;
                $dataObj->img_path_3            = $request->hasFile('img_path_3') ? $fileNameToStore_3 : $dataObj->img_path_3;
                $dataObj->stock_status          = $data['stock_status'];
                $dataObj->stock_quantity        = $data['stock_quantity'];
                //$dataObj->max_purchase_limit    = $data['max_purchase_limit'];
                $dataObj->status                = $data['status'];
                $dataObj->updated_by            = Auth::id();
                $dataObj->save();
                Helper::storeLog($data['name'], "Products", "Update Product", "Updated");

                return (object)[
                    'status'                 => 208,
                    'info'                   => $dataObj->id
                ];
            });


        } catch (Exception $e) {
            dd($e->getMessage());
            return (object)[
                'status'             => 424,
                'error'              => $e->getMessage()
            ];
        }

    }

    public function getProductById($id)
    {
        return Product::findOrFail($id);
    }

    public function productDelete($id)
    {
        try {
            return  DB::transaction(function () use ($id) {
                $data = Product::findOrFail($id);
                $data->delete();

                Helper::storeLog($data->name, "Products", "Delete Product", "Deleted");

                return (object)[
                    'status'                 => 200,
                ];

            });
        } catch (Exception $e) {
            return (object)[
                'status'             => 424,
                'error'              => $e->getMessage()
            ];
        }
    }
}