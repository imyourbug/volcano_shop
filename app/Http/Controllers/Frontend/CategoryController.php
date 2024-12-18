<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;
use App\Models\Attribute;

class CategoryController extends FrontendController
{
    public function index(Request $request, $slug)
    {
        $slug = explode('?', $slug);
        $arraySlug = explode('-', $slug[0]);
        $id = array_pop($arraySlug);
        if ($id) {
            // $attributes =  $this->syncAttributeGroup();
            $category = Category::find($id);

            $products = Product::selectRaw('pro_alias,id,pro_name,pro_image_version,pro_review_total,pro_review_star,pro_sale,CAST(pro_price AS UNSIGNED) as pro_price')
                ->where([
                'pro_active'      => 1,
                'pro_category_id' => $id
            ]);

            $availableAttr = Attribute::selectRaw("distinct atb_type")->pluck("atb_type")->toArray() ?? [];
            $availableAttr = array_unique(array_map(function ($item) {
                return "attr_" . $item;
            }, $availableAttr));
            
            $paramAtbSearch =  $request->only(...$availableAttr);
            $paramAtbSearch =  array_values($paramAtbSearch);

            if (!empty($paramAtbSearch)) {
                $products->whereHas('attributes', function ($query) use ($paramAtbSearch) {
                    $query->whereIn('pa_attribute_id', $paramAtbSearch);
                });
            }

            if ($request->price) {
                $price =  $request->price;
                if ($price == 6) {
                    $products->where('pro_price', '>', 1000000);
                } else {
                    $products->where('pro_price', '<=', 100000 * $price);
                }
            }

            if ($request->k) {
                $products->where('pro_name', 'like', '%' . $request->k . '%');
            }
            if ($request->rv) {
                $products->where('pro_review_star', $request->rv);
            }
            if ($request->sort) {
                $products = $request->sort == 'asc' ? $products->orderBy('pro_price') : $products->orderByDesc('pro_price');
            }

            $products = $products->paginate(12);

            $modelProduct = new Product();

            // Lấy thuộc tính
            $attributes =  $this->syncAttributeGroup();

            $viewData = [
                'attributes'    => $attributes,
                'products'      => $products,
                'title_page'    => $category->c_name,
                'query'         => $request->query(),
                'country'       => $modelProduct->country,
                'link_search'   => request()->fullUrlWithQuery(['k' => $request->get('k')])
            ];

            return view('frontend.pages.product.index', $viewData);
        }
    }
}
