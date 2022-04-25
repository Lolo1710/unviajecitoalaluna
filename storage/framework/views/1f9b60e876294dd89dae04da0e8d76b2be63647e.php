<div class="sidebar-widget widget_instagram wow fadeInUp animated">
    <div class="widget-header-1 position-relative mb-30">
        <h5 class="mt-5 mb-30"><?php echo e($config['name']); ?></h5>
    </div>
    <div class="instagram-gellay">
        <ul class="insta-feed">
            <?php $__currentLoopData = get_galleries($config['number_display']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $gallery): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <li>
                    <a href="<?php echo e($gallery->url); ?>" data-animate="zoomIn" data-duration="1.5s" data-delay="0.1s"><img class="border-radius-5" src="<?php echo e(RvMedia::getImageUrl($gallery->image, 'thumb', false, RvMedia::getDefaultImage())); ?>" alt="<?php echo e($gallery->name); ?>"></a>
                </li>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </ul>
    </div>
</div>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/themes/stories/////widgets/galleries/templates/frontend.blade.php ENDPATH**/ ?>