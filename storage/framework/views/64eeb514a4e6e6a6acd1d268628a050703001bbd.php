<div class="form-group">
    <label for="widget-name"><?php echo e(trans('core/base::forms.name')); ?></label>
    <input type="text" class="form-control" name="name" value="<?php echo e($config['name']); ?>">
</div>
<div class="form-group">
    <label for="widget-name"><?php echo e(trans('core/base::forms.description')); ?></label>
    <textarea rows="3" class="form-control" name="description"><?php echo e($config['description']); ?></textarea>
</div>
<div class="form-group">
    <label for="widget-name"><?php echo e(trans('core/base::forms.image')); ?></label>
    <?php echo Form::mediaImage('image', $config['image']); ?>

</div>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/themes/stories/////widgets/about/templates/backend.blade.php ENDPATH**/ ?>