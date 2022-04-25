<?php Theme::layout('no-breadcrumbs') ?>

<main class="bg-grey pb-30">
    <div class="container single-content">
        <div class="entry-header entry-header-style-1 mb-50 pt-50">
            <h1 class="entry-title mb-50 font-weight-900">
                <?php echo e($post->name); ?>

            </h1>
            <div class="row">
                <div class="col-md-6">
                    <div class="entry-meta align-items-center meta-2 font-small color-muted">
                        <p class="mb-5">
                            <span class="author-avatar"><img class="img-circle" src="<?php echo e($post->author->avatar_url); ?>" alt="<?php echo e($post->author->getFullName()); ?>"></span>
                            <?php echo e(__('By')); ?> <span class="author-name font-weight-bold"><?php echo e($post->author->getFullName()); ?></span>
                        </p>
                        <span class="mr-10"> <?php echo e($post->created_at->format('M d, Y')); ?></span>
                        <span class="has-dot"> <?php echo e(number_format(strlen($post->content) / 200)); ?> <?php echo e(__('mins read')); ?></span>
                    </div>
                </div>
                <div class="col-md-6 text-right d-none d-md-inline">
                    <ul class="header-social-network d-inline-block list-inline mr-15">
                        <li class="list-inline-item text-muted"><span><?php echo e(__('Share this')); ?>: </span></li>
                        <li class="list-inline-item"><a class="social-icon fb text-xs-center" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=<?php echo e(urlencode($post->url)); ?>&title=<?php echo e($post->description); ?>"><i class="elegant-icon social_facebook"></i></a></li>
                        <li class="list-inline-item"><a class="social-icon tw text-xs-center" target="_blank" href="https://twitter.com/intent/tweet?url=<?php echo e(urlencode($post->url)); ?>&text=<?php echo e($post->description); ?>"><i class="elegant-icon social_twitter"></i></a></li>
                        <li class="list-inline-item"><a class="social-icon pt text-xs-center" target="_blank" href="https://www.linkedin.com/shareArticle?mini=true&url=<?php echo e(urlencode($post->url)); ?>&summary=<?php echo e(rawurldecode($post->description)); ?>"><i class="elegant-icon social_linkedin"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!--end single header-->
        <?php if($post->image): ?>
            <figure class="image mb-30 m-auto text-center border-radius-10">
                <img class="border-radius-10" src="<?php echo e(RvMedia::getImageUrl($post->image)); ?>" alt="post-title">
            </figure>
        <?php endif; ?>
        <!--figure-->
        <article class="entry-wraper mb-50">
            <div>
                <?php if(defined('GALLERY_MODULE_SCREEN_NAME') && !empty($galleries = gallery_meta_data($post))): ?>
                    <?php echo render_object_gallery($galleries, ($post->categories()->first() ? $post->categories()->first()->name : __('Uncategorized'))); ?>

                <?php endif; ?>
                <?php echo clean($post->content, 'youtube'); ?>

            </div>
            <?php if(!$post->tags->isEmpty()): ?>
                <div class="entry-bottom mt-50 mb-30 wow fadeIn  animated" style="visibility: visible; animation-name: fadeIn;">
                    <div class="tags">
                        <span><?php echo e(__('Tags')); ?>: </span>
                        <?php $__currentLoopData = $post->tags; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tag): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <a href="<?php echo e($tag->url); ?>" rel="tag"><?php echo e($tag->name); ?></a>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                </div>
            <?php endif; ?>
            <div class="single-social-share clearfix wow fadeIn  animated" style="visibility: visible; animation-name: fadeIn;">
                <ul class="header-social-network d-inline-block list-inline float-md-right mt-md-0 mt-4">
                    <li class="list-inline-item text-muted"><span>Share this: </span></li>
                    <li class="list-inline-item"><a class="social-icon fb text-xs-center" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=<?php echo e(urlencode($post->url)); ?>&title=<?php echo e($post->description); ?>"><i class="elegant-icon social_facebook"></i></a></li>
                    <li class="list-inline-item"><a class="social-icon tw text-xs-center" target="_blank" href="https://twitter.com/intent/tweet?url=<?php echo e(urlencode($post->url)); ?>&text=<?php echo e($post->description); ?>"><i class="elegant-icon social_twitter"></i></a></li>
                    <li class="list-inline-item"><a class="social-icon pt text-xs-center" target="_blank" href="https://www.linkedin.com/shareArticle?mini=true&url=<?php echo e(urlencode($post->url)); ?>&summary=<?php echo e(rawurldecode($post->description)); ?>"><i class="elegant-icon social_linkedin"></i></a></li>
                </ul>
            </div>
            <!--author box-->
            <div class="author-bio p-30 mt-50 border-radius-10 bg-white wow fadeIn  animated" style="visibility: visible; animation-name: fadeIn;">
                <div class="author-image mb-30">
                    <img class="avatar" src="<?php echo e($post->author->avatar_url); ?>" alt="<?php echo e($post->author->getFullName()); ?>">
                </div>
                <div class="author-info">
                    <h4 class="font-weight-bold mb-20">
                        <span class="vcard author"><span class="fn"><?php echo e($post->author->getFullName()); ?></span></span>
                    </h4>
                </div>
            </div>

            <?php if(theme_option('facebook_comment_enabled_in_post', 'yes') == 'yes'): ?>
                <br />
                <?php echo apply_filters(BASE_FILTER_PUBLIC_COMMENT_AREA, Theme::partial('comments')); ?>

            <?php endif; ?>

            <!--related posts-->
            <?php $relatedPosts = get_related_posts($post->id, 4); ?>
            <?php if($relatedPosts->count() > 0): ?>
                <div class="related-posts">
                    <div class="post-module-3">
                        <div class="widget-header-2 position-relative mb-30">
                            <h5 class="mt-5 mb-30"><?php echo e(__('Related posts')); ?></h5>
                        </div>
                        <div class="loop-list loop-list-style-1">
                            <?php $__currentLoopData = $relatedPosts->take(2); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $relatedItem): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <article class="hover-up-2 transition-normal wow fadeInUp   animated" style="visibility: visible; animation-name: fadeInUp;">
                                <div class="row mb-40 list-style-2">
                                    <div class="col-md-4">
                                        <div class="post-thumb position-relative border-radius-5">
                                            <div class="img-hover-slide border-radius-5 position-relative" style="background-image: url(<?php echo e(RvMedia::getImageUrl($relatedItem->image)); ?>)">
                                                <a class="img-link" href="<?php echo e($relatedItem->url); ?>"></a>
                                            </div>
                                            <ul class="social-share">
                                                <li><a href="#"><i class="elegant-icon social_share"></i></a></li>
                                                <li><a class="fb" href="https://www.facebook.com/sharer/sharer.php?u=<?php echo e(urlencode($relatedItem->url)); ?>&title=<?php echo e($relatedItem->description); ?>" title="<?php echo e(__('Share on Facebook')); ?>" target="_blank"><i class="elegant-icon social_facebook"></i></a></li>
                                                <li><a class="tw" href="https://twitter.com/intent/tweet?url=<?php echo e(urlencode($relatedItem->url)); ?>&text=<?php echo e($relatedItem->description); ?>" target="_blank" title="<?php echo e(__('Tweet now')); ?>"><i class="elegant-icon social_twitter"></i></a></li>
                                                <li><a class="pt" href="https://www.linkedin.com/shareArticle?mini=true&url=<?php echo e(urlencode($relatedItem->url)); ?>&summary=<?php echo e(rawurldecode($relatedItem->description)); ?>" target="_blank" title="<?php echo e(__('Share on Linkedin')); ?>"><i class="elegant-icon social_linkedin"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-md-8 align-self-center">
                                        <div class="post-content">
                                            <div class="entry-meta meta-0 font-small mb-10">
                                                <?php $__currentLoopData = $relatedItem->categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <a href="<?php echo e($category->url); ?>"><span class="post-cat text-<?php echo e(['warning', 'primary', 'info', 'success'][array_rand(['warning', 'primary', 'info', 'success'])]); ?>"><?php echo e($category->name); ?></span></a>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </div>
                                            <h5 class="post-title font-weight-900 mb-20">
                                                <a href="<?php echo e($relatedItem->url); ?>"><?php echo e($relatedItem->name); ?></a>
                                                <span class="post-format-icon"><i class="elegant-icon icon_star_alt"></i></span>
                                            </h5>
                                            <div class="entry-meta meta-1 float-left font-x-small text-uppercase">
                                                <span class="post-on"><?php echo e($relatedItem->created_at->format('d M, Y')); ?></span>
                                                <span class="time-reading has-dot"><?php echo e(number_format(strlen($relatedItem->content) / 200)); ?> <?php echo e(__('mins read')); ?></span>
                                                <span class="post-by has-dot"><?php echo e(number_format($relatedItem->views)); ?> <?php echo e(__('views')); ?></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </article>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </div>
                    </div>
                </div>
            <?php endif; ?>
            <!--More posts-->
            <?php if($relatedPosts->count() > 2): ?>
                <div class="single-more-articles border-radius-5">
                    <div class="widget-header-2 position-relative mb-30">
                        <h5 class="mt-5 mb-30"><?php echo e(__('You might be interested in')); ?></h5>
                        <button class="single-more-articles-close"><i class="elegant-icon icon_close"></i></button>
                    </div>
                    <div class="post-block-list post-module-1 post-module-5">
                        <ul class="list-post">
                            <?php $__currentLoopData = $relatedPosts->skip(2); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $relatedItem): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li class="mb-30">
                                    <div class="d-flex hover-up-2 transition-normal">
                                        <div class="post-thumb post-thumb-80 d-flex mr-15 border-radius-5 img-hover-scale overflow-hidden">
                                            <a class="color-white" href="<?php echo e($relatedItem->url); ?>">
                                                <img src="<?php echo e(RvMedia::getImageUrl($relatedItem->image)); ?>" alt="<?php echo e($relatedItem->name); ?>">
                                            </a>
                                        </div>
                                        <div class="post-content media-body">
                                            <h6 class="post-title mb-15 text-limit-2-row font-medium"><a href="<?php echo e($relatedItem->url); ?>"><?php echo e($relatedItem->name); ?></a></h6>
                                            <div class="entry-meta meta-1 float-left font-x-small text-uppercase">
                                                <span class="post-on"><?php echo e($relatedItem->created_at->format('d M, Y')); ?></span>
                                                <span class="post-by has-dot"><?php echo e(number_format($relatedItem->views)); ?> <?php echo e(__('views')); ?></span>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </ul>
                    </div>
                </div>
            <?php endif; ?>
        </article>
    </div>
    <!--container-->
</main>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/themes/stories/views/post.blade.php ENDPATH**/ ?>