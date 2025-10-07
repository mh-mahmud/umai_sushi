<?php

namespace App\Services;

use App\Models\Career;
use Illuminate\Support\Facades\DB;

class CareerService
{

    // public function getAllcareer($id)
    // {
    //     return Career::findOrFail($id);
    // }

    public function update_career($request, $id)
    {
        $career = Career::findOrFail($id);
        $career->job_title = $request->job_title;
        $career->job_description = $request->job_description;
        // $career->career_category_id = $request->career_category_id;
        $career->status = $request->status;

        if ($request->hasFile('job_image')) {
           
            if ($career->job_image) {
                $previousImagePath = getcwd().'/uploads/careers/'.$career->job_image;
                if (file_exists($previousImagePath)) {
                    @unlink($previousImagePath);
                }
            }
            $fileNameWithExt = $request->file('job_image')->getClientOriginalName();
            $fileName = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
            $extension = $request->file('job_image')->getClientOriginalExtension();
            $fileNameToStore = $fileName.'_'.time().'.'.$extension;
            $path = $request->file('job_image')->move(getcwd().'/uploads/careers', $fileNameToStore);
            $career->job_image = $fileNameToStore;
        }
        
        $career->save();
        return $career;
    }

    public function getAllCareer()
    {
        return Career::orderBy('id', 'desc')
            ->paginate(config('constants.ROW_PER_PAGE'));
    }
    

    public function createcareer($request)
    {

        if ($request->hasFile('job_image')) {
            $fileNameWithExt = $request->file('job_image')->getClientOriginalName();
            $fileName = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
            $extension = $request->file('job_image')->getClientOriginalExtension();
            $fileNameToStore = $fileName.'_'.time().'.'.$extension;
            $path = $request->file('job_image')->move(getcwd().'/uploads/careers', $fileNameToStore);
            
        } else {
            $fileNameToStore = '';
        }
        
        $career = new career([
            'job_title' => $request->job_title,
            // 'career_category_id' => $request->career_category_id,
            'job_image' => $fileNameToStore,
            'job_description' => $request->job_description,
            'status' => $request->status
        ]);

        $career->save();
        return $career;

    }

    public function get_career_details($id)
    {
        return Career::findOrFail($id);
    }


    public function delete_career($id)
    {
        $career = Career::findOrFail($id);
        if ($career->job_image) {
            $imagePath = getcwd().'/uploads/careers/'.$career->job_image;
            if (file_exists($imagePath)) {
                @unlink($imagePath);
            }
        }

        if($career->delete()) {
            return true;
        }
        return false;
    }
}

