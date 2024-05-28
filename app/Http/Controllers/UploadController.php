<?php

namespace App\Http\Controllers;

use App\Constant\GlobalConstant;
use App\Imports\ProductImport;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Maatwebsite\Excel\Facades\Excel;
use Throwable;

class UploadController extends Controller
{
    //
    public function upload(Request $request)
    {
        $url = '';
        try {
            $request->validate([
                // 'file' =>  'max:500000|mimes:jpeg,png,pdf,docx,pptx,cad,xlsx,xls,csv',
                'file' =>  'required',
            ]);
            $file_name = $request->file('file')->getClientOriginalName();
            $request->file('file')->storeAs(
                'public/upload/',
                $file_name
            );
            // dd(storage_path('app/public/upload/' . $file_name));
            Excel::import(new ProductImport, storage_path('app/public/upload/' . $file_name), null, \Maatwebsite\Excel\Excel::XLS);
        } catch (Throwable $e) {
            return response()->json([
                'status' => 1,
                'message' => $e->getMessage()
            ]);
        }

        return response()->json([
            'status' => 0,
            'url' => $url
        ]);
    }
}
