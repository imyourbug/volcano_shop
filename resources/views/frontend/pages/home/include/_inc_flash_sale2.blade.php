<div id="flash_sale">
    <a href="{{ $event4->e_link }}" title="" class="image" target="_blank">
        <img alt="" style="height:250px;"
            src="{{ !str_starts_with($event4->e_banner, '/') ? '/' . $event4->e_banner : $event4->e_banner }}"
            class="lazyload" width="100%" />
    </a>

</div>
<div class="cb"></div>
