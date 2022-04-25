<div class="col-lg-3 col-md-6">
    <div class="sidebar-widget widget_tagcloud wow fadeInUp animated mb-30" data-wow-delay="0.2s">
        <div class="widget-header-2 position-relative mb-30">
            <h5 class="mt-5 mb-30"><?php echo e($config['name']); ?></h5>
        </div>
        <div class="tagcloud mt-50">
            <?php $__currentLoopData = get_popular_tags($config['number_display']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tag): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <a class="tag-cloud-link" href="<?php echo e($tag->url); ?>"><?php echo e($tag->name); ?></a>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>
</div>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/themes/stories/////widgets/tags/templates/frontend.blade.php ENDPATH**/ ?>