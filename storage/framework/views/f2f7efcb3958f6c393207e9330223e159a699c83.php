<?php
    $featuredPosts = get_featured_posts(6, ['slugable', 'categories', 'categories.slugable']);
?>

<div class="container">
    <div class="hot-tags pt-30 pb-30 font-small align-self-center">
        <div class="widget-header-3">
            <div class="row align-self-center">
                <div class="col-md-4 align-self-center">
                    <h5 class="widget-title"><?php echo clean($title); ?></h5>
                </div>
                <div class="col-md-8 text-md-right font-small align-self-center">
                    <p class="d-inline-block mr-5 mb-0"><i class="elegant-icon  icon_tag_alt mr-5 text-muted"></i><?php echo e(__('Hot tags')); ?>:</p>
                    <ul class="list-inline d-inline-block tags">
                        <?php $__currentLoopData = get_popular_tags(4); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tag): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <li class="list-inline-item"><a href="<?php echo e($tag->url); ?>"># <?php echo e($tag->name); ?></a></li>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="loop-grid mb-30">
        <div class="row">
            <?php if($featuredPosts->count() > 1): ?>
                <div class="col-lg-8 mb-30">
                    <div class="carausel-post-1 hover-up border-radius-10 overflow-hidden transition-normal position-relative wow fadeInUp animated">
                        <div class="arrow-cover"></div>
                        <div class="slide-fade">
                            <?php $__currentLoopData = $featuredPosts->take(2); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="position-relative post-thumb">
                                <div class="thumb-overlay img-hover-slide position-relative" style="background-image: url(<?php echo e(RvMedia::getImageUrl($post->image, null, false, RvMedia::getDefaultImage())); ?>)">
                                    <a class="img-link" href="<?php echo e($post->url); ?>"></a>
                                    <span class="top-left-icon bg-warning"><i class="elegant-icon icon_star_alt"></i></span>
                                    <div class="post-content-overlay text-white ml-30 mr-30 pb-30">
                                        <div class="entry-meta meta-0 font-small mb-20">
                                            <?php $__currentLoopData = $post->categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <a href="<?php echo e($category->url); ?>"><span class="post-cat text-<?php echo e(['warning', 'primary', 'info', 'success'][array_rand(['warning', 'primary', 'info', 'success'])]); ?> text-uppercase"><?php echo e($category->name); ?></span></a>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </div>
                                        <h3 class="post-title font-weight-900 mb-20">
                                            <a class="text-white" href="<?php echo e($post->url); ?>"><?php echo e($post->name); ?></a>
                                        </h3>
                                        <div class="entry-meta meta-1 font-small text-white mt-10 pr-5 pl-5">
                                            <span class="post-on"><?php echo e($post->created_at->diffForHumans()); ?></span>
                                            <span class="hit-count has-dot"><?php echo e(number_format($post->views)); ?> <?php echo e(__('views')); ?></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </div>
                    </div>
                </div>
            <?php endif; ?>
            <?php $__currentLoopData = $featuredPosts->skip(2)->take(1); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <article class="col-lg-4 col-md-6 mb-30 wow fadeInUp animated" data-wow-delay="0.2s">
                    <?php echo Theme::partial('components.post-card', compact('post')); ?>

                </article>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <?php $__currentLoopData = $featuredPosts->skip(3); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <article class="col-lg-4 col-md-6 mb-30 wow fadeInUp animated" data-wow-delay="0.<?php echo e($loop->index * 2); ?>s">
                    <?php echo Theme::partial('components.post-card', compact('post')); ?>

                </article>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>
</div>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/themes/stories/partials/short-codes/featured-posts.blade.php ENDPATH**/ ?>