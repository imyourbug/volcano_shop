@extends('layouts.app_master_frontend')

@section('css')
    @php
        $display_menu = config('layouts.component.cate.home.display');
    @endphp
    <style>
        <?php $style = file_get_contents('css/home_insights.min.css');
        echo $style; ?> #menu-main {
            display: '{{ $display_menu }}';
        }
    </style>
    <link rel="stylesheet" type="text/css" href="/css/product_search.min.css">
    <style>
        <style>.pagination {
            display: flex;
            justify-content: center;

        }

        .pagination li {
            margin: 0px 10px;

        }
    </style>
@stop

@section('content')

    <div class="component-slide">
        @if (config('layouts.pages.home.slide.with') == 'full')
            <div id="content-slide">
                <div class="spinner">
                    <div class="rect1"></div>
                    <div class="rect2"></div>
                    <div class="rect3"></div>
                    <div class="rect4"></div>
                    <div class="rect5"></div>
                </div>
            </div>
        @else
            <div class="container" style="display: flex">
                <div class="left" style="width: 250px">

                </div>
                <div class="right" style=" width: calc(100% - 250px);">
                    <div id="content-slide">
                        <div class="spinner">
                            <div class="rect1"></div>
                            <div class="rect2"></div>
                            <div class="rect3"></div>
                            <div class="rect4"></div>
                            <div class="rect5"></div>
                        </div>
                    </div>
                </div>
            </div>
        @endif
    </div>
    <div class="container" id="before-slide">
        <!--<div class="product-one">-->
        <!--    <div class="top">-->
        <!--        <a href="#" title="" class="main-title" style="font-weight:600">SẢN PHẨM BÁN CHẠY</a>-->
        <!--        @if (isset($productsPay))-->
        <!--            @foreach ($productsPay as $product)-->
        <!--                <div class="item">-->
        <!--                    @include('frontend.components.product_item', ['product' => $product])-->
        <!--                </div>-->
        <!--            @endforeach-->
        <!--        @endif-->
        <!--    </div>-->
        <!--    <div class="bot">-->
        <!--        {{--  @for ($i = 1; $i <= 5; $i++) --}}-->
        <!--        {{-- <div></div> --}}-->
        <!--        {{-- @endfor --}}-->
        <!--        @if ($event1)-->
        <!--            <div class="left">-->
        <!--                <div class="image">-->
        <!--                    <a href="{{ $event1->e_link }}" title="" class="{{ $event1->e_name }}" target="_blank">-->
        <!--                        <img style="height: 310px;" class="lazyload lazy" alt="{{ $event1->e_name }}"-->
        <!--                            src="{{ asset('images/preloader.gif') }}"-->
        <!--                            data-src="{{ !str_starts_with($event1->e_banner, '/') ? '/' . $event1->e_banner : $event1->e_banner }}" />-->
        <!--                    </a>-->
        <!--                </div>-->
        <!--            </div>-->
        <!--        @endif-->
        <!--        <div class="right js-product-one owl-carousel owl-theme owl-custom">-->
        <!--            @foreach ($productsPay as $product)-->
        <!--                <div class="item">-->
        <!--                    @include('frontend.components.product_item', ['product' => $product])-->
        <!--                </div>-->
        <!--            @endforeach-->
        <!--        </div>-->
        <!--    </div>-->
        <!--</div>-->

        <!--@if ($event2)-->
        <!--    @include('frontend.pages.home.include._inc_flash_sale')-->
        <!--@endif-->

        <div class="product-two">
            <div class="top">
            </div>
            <div class="bot">
                @for ($i = 0; $i < 4; $i++)
                    <div class="item">
                        @include('frontend.components.product_item')
                    </div>
                @endfor
            </div>
        </div>

        <div class="product-three">
            <div class="top">
                <a href="#" title="" class="main-title" style="font-weight:600">SẢN PHẨM MỚI</a>
            </div>
            <div class="bot">
                <div class="left">
                    <div class="image">
                        @if (isset($event3->e_link))
                            <a href="{{ $event3->e_link }}" title="" class="{{ $event3->e_name }}" target="_blank">
                                <img style="height: 310px;" class="lazyload lazy" alt="{{ $event3->e_name }}"
                                    src="{{ asset('images/preloader.gif') }}"
                                    data-src="{{ !str_starts_with($event3->e_banner, '/') ? '/' . $event3->e_banner : $event3->e_banner }}" />
                            </a>
                        @endif
                    </div>
                </div>
                <div class="right js-product-one owl-carousel owl-theme owl-custom">
                    @if (isset($productsNew))
                        @foreach ($productsNew as $product)
                            <div class="item">
                                @include('frontend.components.product_item', ['product' => $product])
                            </div>
                        @endforeach
                    @endif
                </div>
            </div>
        </div>
        <!--<div class="product-two">-->
        <!--    <div class="top">-->
        <!--        <a href="#" class="main-title" style="font-weight:600">SẢN PHẨM NỔI BẬT</a>-->
        <!--    </div>-->
        <!--    <div class="bot">-->
        <!--        @if (isset($productsHot))-->
        <!--            @foreach ($productsHot as $product)-->
        <!--                <div class="item">-->
        <!--                    @include('frontend.components.product_item', ['product' => $product])-->
        <!--                </div>-->
        <!--            @endforeach-->
        <!--        @endif-->
        <!--    </div>-->
        <!--</div>-->
        @if ($event4)
            @include('frontend.pages.home.include._inc_flash_sale2');
        @endif
        <!--<div class="product-two" id="product-recently"></div>-->
        @foreach ($categories as $category)
            @if ($category->products && $category->products->count())
                <div class="product-two">
                    <div class="top">
                        <a href="#" class="main-title" style="font-weight:600">{{ $category->c_name }}</a>
                    </div>
                    <div class="bot">
                        @foreach ($category->products as $product)
                            <div class="item">
                                @include('frontend.components.product_item', ['product' => $product])
                            </div>
                        @endforeach
                    </div>
                </div>
            @endif
        @endforeach
        <!--<div class="product-two">-->
        <!--    <div class="top">-->
        <!--        <a href="#" class="main-title" style="font-weight:600">SẢN PHẨM KHÁC</a>-->
        <!--    </div>-->
        <!--    <div class="bot" style="display: flex; flex-wrap:wrap">-->
        <!--        @foreach ($products as $product)-->
        <!--            <div class="item">-->
        <!--                @include('frontend.components.product_item', ['product' => $product])-->
        <!--            </div>-->
        <!--        @endforeach-->
        <!--    </div>-->
        <!--</div>-->
        <!--{!! $products->links() !!}-->
        {{-- <div id="product-by-category"></div> --}}
        @include('frontend.pages.home.include._inc_article')
    </div>
@stop

@section('script')
    <script type="text/javascript">
        var routeRenderProductRecently = '{{ route('ajax_get.product_recently') }}';
        var routeRenderProductByCategory = '{{ route('ajax_get.product_by_category') }}';
        var routeRenderSlide = '{{ route('ajax_get.slide') }}';
        var CSS = "{{ asset('css/home.min.css?v=1') }}";
        <?php $js = file_get_contents('js/home.js');
        echo $js; ?>
    </script>
@stop
