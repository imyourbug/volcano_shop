@if (isset($product))
    <div class="product-item">
        <a href="{{ route('get.product.detail', $product->pro_slug . '-' . $product->id) }}" title=""
            class="avatar image contain">
            <img alt="{{ $product->pro_name }}"
                data-src="{{ !str_starts_with($product->pro_image_version, '/')
                    ? '/' . $product->pro_image_version
                    : $product->pro_image_version }}"
                src="{{ asset('images/preloader.gif') }}" class="lazyload lazy">
        </a>
        <a href="{{ route('get.product.detail', $product->pro_slug . '-' . $product->id) }}"
            title="{{ $product->pro_name }}" class="title">
            <h3>{{ $product->pro_name }}</h3>
        </a>
        <p class="rating">
            <span>
                @php
                    $iactive = 0;
                    if ($product->pro_review_total) {
                        $iactive = round($product->pro_review_star / $product->pro_review_total, 2);
                    }

                @endphp
                @for ($i = 1; $i <= 5; $i++)
                    <i class="la la-star {{ $i <= $iactive ? 'active' : '' }}"></i>
                @endfor
            </span>
            <span class="text">{{ $product->pro_review_total }} Đánh giá</span>
        </p>
        @if ($product->pro_sale)
            <p>
                <span class="percent">-{{ $product->pro_sale }}%</span>
                @php
                    $price = ((100 - $product->pro_sale) * $product->pro_price) / 100;
                @endphp
                <span class="price">{{ number_format($price, 0, ',', '.') }} đ</span>
                <span class="price-sale">{{ number_format($product->pro_price, 0, ',', '.') }} đ</span>
            </p>
        @else
            <p class="price">{{ number_format($product->pro_price, 0, ',', '.') }} đ</p>
        @endif

    </div>
@endif
