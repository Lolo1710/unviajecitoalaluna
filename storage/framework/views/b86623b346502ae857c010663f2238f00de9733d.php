<div class="site-bottom pt-50 pb-50">
    <div class="container">
        <div class="sidebar-widget widget-latest-posts mb-30 mt-20 wow fadeInUp animated">
            <div class="widget-header-2 position-relative mb-30">
                <h5 class="mt-5 mb-30"><?php echo clean($title); ?></h5>
            </div>
            <div class="carausel-3-columns">
                <?php $__currentLoopData = get_featured_categories(10, ['slugable', 'image']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="carausel-3-columns-item d-flex bg-grey has-border p-25 hover-up-2 transition-normal border-radius-5">
                        <div class="post-thumb post-thumb-64 d-flex mr-15 border-radius-5 img-hover-scale overflow-hidden">
                            <a class="color-white" href="<?php echo e($category->url); ?>">
                                <?php if(count($category->image->meta_value) > 0): ?>
                                <img src="<?php echo e(RvMedia::getImageUrl($category->image->meta_value[0], 'thumb', false, RvMedia::getDefaultImage())); ?>" alt="<?php echo e($category->name); ?>">
                                <?php endif; ?>
                            </a>
                        </div>
                        <div class="post-content media-body">
                            <h6> <a href="<?php echo e($category->url); ?>"><?php echo e($category->name); ?></a> </h6>
                            <p class="text-muted font-small"><?php echo e(Str::limit($category->description, 65)); ?></p>
                        </div>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </div>
    </div>
</div>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/themes/stories/partials/short-codes/featured-categories.blade.php ENDPATH**/ ?>