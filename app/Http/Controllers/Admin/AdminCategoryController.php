<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\AdminRequestCategory;
use App\Models\Category;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class AdminCategoryController extends AdminController
{
    public function index()
    {
        $categories = Category::paginate(10);

        $viewData = [
            'categories' => $categories
        ];

        return view('admin.category.index', $viewData);
    }

    public function create()
    {
        $categories = $this->getCategoriesSort();
        return view('admin.category.create',compact('categories'));
    }

    public function store(AdminRequestCategory $request)
    {
        $data               = $request->except('_token','c_avatar');
        $data['c_slug']     = Str::slug($request->c_name);
        $data['created_at'] = Carbon::now();
        if ($request->c_avatar) {
            $image = upload_image('c_avatar');
            if ($image['code'] == 1)
                $data['c_avatar'] = $image['path_img'];
        }

        $id = Category::insertGetId($data);
        return redirect()->back()->with('success', 'Lưu dữ liệu thành công');
    }

    public function edit($id)
    {
        $category = Category::find($id);
        $categories = $this->getCategoriesSort();
        return view('admin.category.update', compact('category','categories'));
    }

    public function update(AdminRequestCategory $request, $id)
    {
        $category           = Category::find($id);
        $data               = $request->except('_token','c_avatar');
        $data['c_slug']     = Str::slug($request->c_name);
        $data['updated_at'] = Carbon::now();

        if ($request->c_avatar) {
            $image = upload_image('c_avatar');
            if ($image['code'] == 1)
                $data['c_avatar'] = $image['path_img'];
        }

        $category->update($data);
        return redirect()->back()->with('success', 'Lưu dữ liệu thành công');
    }

    public function active($id)
    {
        $category = Category::find($id);
        $category->c_status = ! $category->c_status;
        $category->save();

        return redirect()->back()->with('success', 'Lưu dữ liệu thành công');
    }

    public function hot($id)
    {
        $category = Category::find($id);
        $category->c_hot = ! $category->c_hot;
        $category->save();

        return redirect()->back()->with('success', 'Cập nhật dữ liệu thành công');
    }

    public function delete($id)
    {
        $category = Category::find($id);
        if ($category) $category->delete();

        return redirect()->back()->with('success', 'Xóa thành công');
    }

    protected function getCategoriesSort()
    {
        $categories = Category::where('c_status', Category::STATUS_ACTIVE)
            ->select('id', 'c_parent_id', 'c_name')->get();

        $listCategoriesSort = [];
        Category::recursive($categories, $parent = 0, $level = 1, $listCategoriesSort);
        return $listCategoriesSort;
    }
}
