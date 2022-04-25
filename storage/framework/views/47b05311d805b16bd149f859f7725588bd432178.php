<div class="gallery-images-wrapper list-images">
    <?php
        $values = $values == '[null]' ? '[]' : $values;
        $attributes = isset($attributes) ? $attributes : [];
    ?>
    <?php $images = old($name, !is_array($values) ? json_decode($values) : $values); ?>
    <div class="images-wrapper">
        <div data-name="<?php echo e($name); ?>"
             class="text-center cursor-pointer js-btn-trigger-add-image default-placeholder-gallery-image <?php if(is_array($images) && !empty($images)): ?> hidden <?php endif; ?>">
            <img src="<?php echo e(RvMedia::getDefaultImage(false)); ?>" alt="<?php echo e(trans('core/base::base.image')); ?>" width="120">
            <br>
            <p style="color:#c3cfd8"><?php echo e(trans('core/base::base.using_button')); ?>

                <strong><?php echo e(trans('core/base::base.select_image')); ?></strong> <?php echo e(trans('core/base::base.to_add_more_image')); ?>.</p>
        </div>
        <input type="hidden" name="<?php echo e($name); ?>">
        <ul class="list-unstyled list-gallery-media-images <?php if(!is_array($images) || empty($images)): ?> hidden <?php endif; ?>">
            <?php if(is_array($images) && !empty($images)): ?>
                <?php $__currentLoopData = $images; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $image): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php if(!empty($image)): ?>
                        <li class="gallery-image-item-handler">
                            <div class="list-photo-hover-overlay">
                                <ul class="photo-overlay-actions">
                                    <li>
                                        <a class="mr10 btn-trigger-edit-gallery-image" data-toggle="tooltip"
                                           data-placement="bottom" data-original-title="<?php echo e(trans('core/base::base.change_image')); ?>">
                                            <i class="fa fa-edit"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a class="mr10 btn-trigger-remove-gallery-image" data-toggle="tooltip"
                                           data-placement="bottom" data-original-title="<?php echo e(trans('core/base::base.delete_image')); ?>">
                                            <i class="fa fa-trash"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="custom-image-box image-box">
                                <input type="hidden" name="<?php echo e($name); ?>" value="<?php echo e($image); ?>" class="image-data">
                                    <div class="preview-image-wrapper <?php if(!Arr::get($attributes, 'allow_thumb', true)): ?> preview-image-wrapper-not-allow-thumb <?php endif; ?>">
                                    <img src="<?php echo e(RvMedia::getImageUrl($image, Arr::get($attributes, 'allow_thumb', true) == true ? 'thumb' : null)); ?>" alt="<?php echo e(trans('core/base::base.preview_image')); ?>"
                                         class="preview_image">
                                </div>
                            </div>
                        </li>
                    <?php endif; ?>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <?php endif; ?>
        </ul>
    </div>
    <a href="#" class="add-new-gallery-image js-btn-trigger-add-image"
       data-name="<?php echo e($name); ?>"><?php echo e(trans('core/base::base.add_image')); ?>

    </a>
</div>

<?php if (! $__env->hasRenderedOnce('ee41b564-6c1f-4cda-b5de-ba3524c4409f')): $__env->markAsRenderedOnce('ee41b564-6c1f-4cda-b5de-ba3524c4409f'); ?>
    <?php $__env->startPush('footer'); ?>
        <script id="gallery_select_image_template" type="text/x-custom-template">
            <div class="list-photo-hover-overlay">
                <ul class="photo-overlay-actions">
                    <li>
                        <a class="mr10 btn-trigger-edit-gallery-image" data-toggle="tooltip" data-placement="bottom"
                           data-original-title="<?php echo e(trans('core/base::base.change_image')); ?>">
                            <i class="fa fa-edit"></i>
                        </a>
                    </li>
                    <li>
                        <a class="mr10 btn-trigger-remove-gallery-image" data-toggle="tooltip" data-placement="bottom"
                           data-original-title="<?php echo e(trans('core/base::base.delete_image')); ?>">
                            <i class="fa fa-trash"></i>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="custom-image-box image-box">
                <input type="hidden" name="__name__" class="image-data">
                <img src="<?php echo e(RvMedia::getDefaultImage(false)); ?>" alt="<?php echo e(trans('core/base::base.preview_image')); ?>" class="preview_image">
                <div class="image-box-actions">
                    <a class="btn-images" data-result="<?php echo e($name); ?>" data-action="select-image">
                        <?php echo e(trans('core/base::forms.choose_image')); ?>

                    </a> |
                    <a class="btn_remove_image">
                        <span></span>
                    </a>
                </div>
            </div>
        </script>
    <?php $__env->stopPush(); ?>
<?php endif; ?>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/core/base/resources/views//forms/partials/images.blade.php ENDPATH**/ ?>