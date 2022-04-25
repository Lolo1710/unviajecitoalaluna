<div class="ui-select-wrapper form-group">
    <?php
        Arr::set($selectAttributes, 'class', Arr::get($selectAttributes, 'class') . ' ui-select');
    ?>
    <?php echo Form::select($name, $list, $selected, $selectAttributes, $optionsAttributes, $optgroupsAttributes); ?>

    <svg class="svg-next-icon svg-next-icon-size-16">
        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#select-chevron"></use>
    </svg>
</div>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/core/base/resources/views//forms/partials/custom-select.blade.php ENDPATH**/ ?>