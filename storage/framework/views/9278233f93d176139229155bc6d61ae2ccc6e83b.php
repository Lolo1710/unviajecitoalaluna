<div class="site-bottom pt-50 pb-50">
    <div class="container">
        <div class="row">
            <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="col-lg-<?php echo e(12 / count($categories)); ?> col-md-<?php echo e(12 / (count($categories) + 1)); ?>">
                    <div class="sidebar-widget widget-latest-posts mb-30 wow fadeInUp  animated" style="visibility: visible; animation-name: fadeInUp;">
                        <div class="widget-header-2 position-relative mb-30">
                            <h5 class="mt-5 mb-30"><?php echo e($category->name); ?></h5>
                        </div>
                        <div class="post-block-list post-module-1">
                            <ul class="list-post">
                                <?php $__currentLoopData = $category->posts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <li class="mb-30">
                                        <div class="d-flex hover-up-2 transition-normal">
                                            <div class="post-thumb post-thumb-80 d-flex mr-15 border-radius-5 img-hover-scale overflow-hidden">
                                                <a class="color-white" href="<?php echo e($post->url); ?>">
                                                    <img src="<?php echo e(RvMedia::getImageUrl($post->image)); ?>" alt="<?php echo e($post->name); ?>">
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
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>
    <!--container-->
</div>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/themes/stories/partials/short-codes/categories-with-posts.blade.php ENDPATH**/ ?>