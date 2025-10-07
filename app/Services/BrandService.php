<?php

namespace App\Services;

use App\Models\Brand;

class BrandService
{


    public function getAllBrands()
    {
        return Brand::orderBy('created_at', 'desc')->paginate(config('constants.ROW_PER_PAGE'));
    }

    public function create_brand($request)
    {
        if ($request->hasFile('brand_image')) {
            $fileNameWithExt = $request->file('brand_image')->getClientOriginalName();
            $fileName = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
            $extension = $request->file('brand_image')->getClientOriginalExtension();
            $fileNameToStore = $fileName.'_'.time().'.'.$extension;
            $path = $request->file('brand_image')->move(getcwd().'/uploads/brands', $fileNameToStore);
            
        } else {
            
            $fileNameToStore = '';
        }
        
        $brand = new Brand([
            'brand_name' => $request->brand_name,
            'brand_image' => $fileNameToStore,
            'brand_description' => $request->brand_description,
            'status' => $request->status
        ]);

        $brand->save();
        // $user->agent()->save($agent);
        return $brand;
    }

    public function getBrand($id)
    {
        $brand = Brand::findOrFail($id);
        return compact('brand');
    }

    public function getBrandEditData($id)
    {
        $brand = Brand::findOrFail($id);
        return compact('brand');
    }


    public function updateBrand($request, $id)
    {
        $brand = Brand::findOrFail($id);
        $brand->brand_name = $request->brand_name;
        $brand->brand_description = $request->brand_description;
        $brand->status = $request->status;

        if ($request->hasFile('brand_image')) {
           
            if ($brand->brand_image) {
                $previousImagePath = getcwd().'/uploads/brands/'.$brand->brand_image;
                if (file_exists($previousImagePath)) {
                    @unlink($previousImagePath);
                }
            }
            $fileNameWithExt = $request->file('brand_image')->getClientOriginalName();
            $fileName = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
            $extension = $request->file('brand_image')->getClientOriginalExtension();
            $fileNameToStore = $fileName.'_'.time().'.'.$extension;
            $path = $request->file('brand_image')->move(getcwd().'/uploads/brands', $fileNameToStore);
            $brand->brand_image = $fileNameToStore;
               
        }
        $brand->save();
        return $brand;
    }

    public function searchBrand($request)
    {
        $searchTerm = trim($request->input('search'));
        $query = Brand::query();

        $query->where(function($q) use ($searchTerm) {
            $q->where('brand_name', 'LIKE', '%' . $searchTerm . '%')
              ->orWhere('brand_image', 'LIKE', '%' . $searchTerm . '%')
              ->orWhere('brand_description', 'LIKE', '%' . $searchTerm . '%');
        });

        return $query->paginate(config('constants.ROW_PER_PAGE'));
    }

    public function deleteBrand($id)
    {
        $brand = Brand::findOrFail($id);
        if ($brand->brand_image) {
            $imagePath = getcwd().'/uploads/brands/'.$brand->brand_image;
            if (file_exists($imagePath)) {
                @unlink($imagePath);
            }
        }

        if($brand->delete()) {
            return true;
        }
        return false;
    }
}
