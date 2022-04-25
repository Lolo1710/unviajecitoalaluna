<!--Categories-->
<div class="sidebar-widget widget_categories mb-50 mt-30">
    <div class="widget-header-2 position-relative">
        <h5 class="mt-5 mb-15"><?php echo e(__('Hot topics')); ?></h5>
    </div>
    <div class="widget_nav_menu">
        <ul>
            <?php $__currentLoopData = get_popular_categories(5); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <li class="cat-item cat-item-2"><a href="<?php echo e($category->url); ?>"><?php echo e($category->name); ?></a> <span class="post-count"><?php echo e($category->posts_count); ?></span></li>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </ul>
    </div>
</div>

<!--Latest-->
<div class="sidebar-widget widget-latest-posts mb-50">
    <div class="widget-header-2 position-relative mb-30">
        <h5 class="mt-5 mb-30"><?php echo e(__("Don't miss")); ?></h5>
    </div>
    <div class="post-block-list post-module-1 post-module-5">
        <ul class="list-post">
            <?php $__currentLoopData = get_latest_posts(3, [], ['slugable']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <li class="mb-30">
                    <div class="d-flex hover-up-2 transition-normal">
                        <div class="post-thumb post-thumb-80 d-flex mr-15 border-radius-5 img-hover-scale overflow-hidden">
                            <a class="color-white" href="<?php echo e($post->url); ?>">
                                <img src="<?php echo e(RvMedia::getImageUrl($post->image, 'thumb', false, RvMedia::getDefaultImage())); ?>" alt="<?php echo e($post->name); ?>">
                            </a>
                        </div>
                        <div class="post-content media-body">
                            <h6 class="post-title mb-15 text-limit-2-row font-medium"><a href="<?php echo e($post->url); ?>"><?php echo e($post->name); ?></a></h6>
                            <div class="entry-meta meta-1 float-left font-x-small text-uppercase">
                                <span class="post-on"><?php echo e($post->created_at->format('d M, Y')); ?></span>
                                <span class="post-by has-dot"><?php echo e(number_format($post->views)); ?> <?php echo e(__('views')); ?></span>
                            </div>
                        </div>
                    </div>
                </li>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </ul>
    </div>
</div>

<?php if(AdsManager::locationHasAds('panel-ads')): ?>
    <div class="sidebar-widget">
        <div class="widget-header-2 position-relative mb-30">
            <h5 class="mt-5 mb-30"><?php echo e(__('Advertise banner')); ?></h5>
        </div>

        <?php echo AdsManager::display('panel-ads', ['class' => 'border-radius-5']); ?>

    </div>
<?php endif; ?>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/themes/stories/partials/components/panel-inner.blade.php ENDPATH**/ ?>