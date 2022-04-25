<div style="position: relative; margin-bottom: 10px;">
    <div class="c-content-media-2-slider" data-slider="owl" data-single-item="true" data-auto-play="4000">
        <?php if($category != null): ?>
            <div class="c-content-label"><?php echo e($category); ?></div>
        <?php endif; ?>
        <div class="owl-carousel owl-theme c-theme owl-single">
            <?php $__currentLoopData = $galleries; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $image): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php if($image): ?>
                    <div class="item">
                        <div class="c-content-media-2 c-bg-img-center" style="background-image: url('<?php echo e(RvMedia::getImageUrl(Arr::get($image, 'img'))); ?>'); min-height: 380px;">
                        </div>
                    </div>
                <?php endif; ?>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>
</div>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/plugins/gallery/resources/views//partials/object-gallery.blade.php ENDPATH**/ ?>