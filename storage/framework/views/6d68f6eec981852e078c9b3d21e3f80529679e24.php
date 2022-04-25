<div class="bg-grey pt-50 pb-50">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <?php if(!empty($category)): ?>
                    <div class="post-module-2">
                        <div class="widget-header-1 position-relative mb-30  wow fadeInUp animated">
                            <h5 class="mt-5 mb-30"><?php echo e($category->name); ?></h5>
                        </div>
                        <div class="loop-list loop-list-style-1">
                            <div class="row">
                                <?php $__currentLoopData = $category->posts->sortByDesc('id')->take(4); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <article class="col-md-6 mb-40 wow fadeInUp  animated">
                                        <div class="post-card-1 border-radius-10 hover-up">
                                            <?php echo Theme::partial('components.post-card', compact('post')); ?>

                                        </div>
                                    </article>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                        </div>
                    </div>
                <?php endif; ?>
                <div class="post-module-3">
                    <div class="widget-header-1 position-relative mb-30">
                        <h5 class="mt-5 mb-30"><?php echo e(__('Latest posts')); ?></h5>
                    </div>
                    <div class="loop-list loop-list-style-1">
                        <?php $__currentLoopData = get_latest_posts(3, !empty($category) ? $category->posts->sortByDesc('id')->take(4)->pluck('id')->all() : [], ['slugable', 'categories', 'categories.slugable']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <article class="hover-up-2 transition-normal wow fadeInUp animated">
                                <?php echo Theme::partial('components.post-list-item', compact('post')); ?>

                            </article>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="widget-area">
                    <?php echo AdsManager::display('top-sidebar-ads', ['class' => 'mb-30']); ?>

                    <?php echo dynamic_sidebar('primary_sidebar'); ?>

                    <?php echo AdsManager::display('bottom-sidebar-ads', ['class' => 'mt-30 mb-30']); ?>

                </div>
            </div>
        </div>
    </div>
</div>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/themes/stories/partials/short-codes/blog-categories-posts.blade.php ENDPATH**/ ?>