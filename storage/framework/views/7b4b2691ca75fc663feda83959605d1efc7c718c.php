<div class="post-card-1 border-radius-10 hover-up">
    <div class="post-thumb thumb-overlay img-hover-slide position-relative" style="background-image: url(<?php echo e(RvMedia::getImageUrl($post->image, null, false, RvMedia::getDefaultImage())); ?>)">
        <a class="img-link" href="<?php echo e($post->url); ?>"></a>
        <ul class="social-share">
            <li><a href="#"><i class="elegant-icon social_share"></i></a></li>
            <li><a class="fb" href="https://www.facebook.com/sharer/sharer.php?u=<?php echo e(urlencode($post->url)); ?>&title=<?php echo e($post->description); ?>" title="<?php echo e(__('Share on Facebook')); ?>" target="_blank"><i class="elegant-icon social_facebook"></i></a></li>
            <li><a class="tw" href="https://twitter.com/intent/tweet?url=<?php echo e(urlencode($post->url)); ?>&text=<?php echo e($post->description); ?>" target="_blank" title="<?php echo e(__('Tweet now')); ?>"><i class="elegant-icon social_twitter"></i></a></li>
            <li><a class="pt" href="https://www.linkedin.com/shareArticle?mini=true&url=<?php echo e(urlencode($post->url)); ?>&summary=<?php echo e(rawurldecode($post->description)); ?>" target="_blank" title="<?php echo e(__('Share on Linkedin')); ?>"><i class="elegant-icon social_linkedin"></i></a></li>
        </ul>
    </div>
    <div class="post-content p-30">
        <div class="entry-meta meta-0 font-small mb-10">
            <?php $__currentLoopData = $post->categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <a href="<?php echo e($category->url); ?>"><span class="post-cat text-<?php echo e(['warning', 'primary', 'info', 'success'][array_rand(['warning', 'primary', 'info', 'success'])]); ?>"><?php echo e($category->name); ?></span></a>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
        <div class="d-flex post-card-content">
            <h5 class="post-title mb-20 font-weight-900">
                <a href="<?php echo e($post->url); ?>"><?php echo e($post->name); ?></a>
            </h5>
            <div class="entry-meta meta-1 float-left font-x-small text-uppercase">
                <span class="post-on"><?php echo e($post->created_at->format('d M, Y')); ?></span>
                <span class="time-reading has-dot"><?php echo e(number_format(strlen($post->content) / 200)); ?> <?php echo e(__('mins read')); ?></span>
                <span class="post-by has-dot"><?php echo e(number_format($post->views)); ?> <?php echo e(__('views')); ?></span>
            </div>
        </div>
    </div>
</div>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/themes/stories/partials/components/post-card.blade.php ENDPATH**/ ?>