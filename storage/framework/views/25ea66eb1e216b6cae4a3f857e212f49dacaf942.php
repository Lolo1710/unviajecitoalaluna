<?php
Assets::addScriptsDirectly([
    'vendor/core/core/base/libraries/ckeditor/ckeditor.js',
    'vendor/core/core/base/js/editor.js',
]);

$attributes['class'] = Arr::get($attributes, 'class', '') . ' form-control editor-ckeditor';
$attributes['id'] = Arr::get($attributes, 'id', $name);
$attributes['rows'] = Arr::get($attributes, 'rows', 4);
?>

<?php echo Form::textarea($name, $value, $attributes); ?>

<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/core/base/resources/views//forms/partials/ckeditor.blade.php ENDPATH**/ ?>