<div class="ui-select-wrapper">
    <?php
        Arr::set($selectAttributes, 'class', Arr::get($selectAttributes, 'class') . ' ui-select');
    ?>
    <select name="<?php echo e($name); ?>" class='form-control select2_google_fonts_picker'>
        <?php
            $field['options'] = config('core.base.general.google_fonts', []);
        ?>
        <?php $__currentLoopData = array_combine($field['options'], $field['options']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <option value='<?php echo e($key); ?>' <?php if($key == $selected): ?> selected <?php endif; ?>><?php echo e($value); ?></option>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </select>
    <svg class="svg-next-icon svg-next-icon-size-16">
        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#select-chevron"></use>
    </svg>
</div>

<?php if (! $__env->hasRenderedOnce('224eb7f4-02ea-4cee-8642-9513283e1d58')): $__env->markAsRenderedOnce('224eb7f4-02ea-4cee-8642-9513283e1d58'); ?>
    <?php $__env->startPush('footer'); ?>
        <link href="https://fonts.googleapis.com/css?family=<?php echo e(implode('|', array_map('urlencode', $field['options']))); ?>" rel="stylesheet" type="text/css">
        <script>
            'use strict';
            jQuery(document).ready(function($) {
                $('.select2_google_fonts_picker').each(function (i, obj) {
                    if (!$(obj).hasClass('select2-hidden-accessible')){
                        $(obj).select2({
                            templateResult: function (opt) {
                                if (!opt.id) {
                                    return opt.text;
                                }
                                return $('<span style="font-family:\'' + opt.id + '\';"> ' + opt.text + '</span>');
                            },
                        })
                    }
                });
            });
        </script>
    <?php $__env->stopPush(); ?>
<?php endif; ?>

<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/core/base/resources/views//forms/partials/google-fonts.blade.php ENDPATH**/ ?>