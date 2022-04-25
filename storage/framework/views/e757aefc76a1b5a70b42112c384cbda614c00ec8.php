<div class="sidebar-widget widget-latest-posts mb-50 wow fadeInUp animated">
    <div class="widget-header-1 position-relative mb-30">
        <h5 class="mt-5 mb-30"><?php echo e($config['name']); ?></h5>
    </div>
    <div class="post-block-list post-module-1">
        <ul class="list-post">
            <?php $__currentLoopData = get_popular_posts($config['number_display']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <li class="mb-30 wow fadeInUp animated">
                    <div class="d-flex bg-white has-border p-25 hover-up transition-normal border-radius-5">
                        <div class="post-content media-body">
                            <h6 class="post-title mb-15 text-limit-2-row font-medium"><a href="<?php echo e($post->url); ?>"><?php echo e($post->name); ?></a></h6>
                            <div class="entry-meta meta-1 float-left font-x-small text-uppercase">
                                <span class="post-on"><?php echo e($post->created_at->format('d M, Y')); ?></span>
                                <span class="post-by has-dot"><?php echo e(number_format($post->views)); ?> <?php echo e(__('views')); ?></span>
                            </div>
                        </div>
                        <div class="post-thumb post-thumb-80 d-flex ml-15 border-radius-5 img-hover-scale overflow-hidden">
                            <a class="color-white" href="<?php echo e($post->url); ?>">
                                <img src="<?php echo e(RvMedia::getImageUrl($post->image, 'thumb', false, RvMedia::getDefaultImage())); ?>" alt="<?php echo e($post->name); ?>">
                            </a>
                        </div>
                    </div>
                </li>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </ul>
    </div>
</div>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/themes/stories/////widgets/popular-posts/templates/frontend.blade.php ENDPATH**/ ?>