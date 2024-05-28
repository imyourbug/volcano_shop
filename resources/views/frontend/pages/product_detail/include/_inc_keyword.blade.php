@if (isset($product->pro_tag))
    @php
        $tags = explode(',', $product->pro_tag);
    @endphp
    <div class="infomation" style="margin-top: 20px;">
        <h2 class="infomation__title">Tags</h2>
        <div class="infomation__group">
            <div class="">
                @foreach ($tags as $keyword)
                    <a href=""
                        style="border: 1px solid #E91E63;display: inline-block;font-size: 13px;padding: 0 5px;border-radius: 5px;margin-right: 10px;color: #E91E63;">{{ $keyword }}</a>
                @endforeach
            </div>
        </div>
    </div>
@endif
