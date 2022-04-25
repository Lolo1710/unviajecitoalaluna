<div class="featured-1">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 align-self-center">
                <?php if(isset($textMuted) && $textMuted): ?>
                    <p class="text-muted"><span class="typewrite d-inline" data-period="2000" data-type='[ <?php $__currentLoopData = explode(',', $textMuted); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $text): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        "<?php echo e($text); ?>" <?php if(!$loop->last): ?> , <?php endif; ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?> ]'></span></p>
                <?php endif; ?>
                <?php if(isset($title) && $title): ?>
                    <h2><?php echo clean($title); ?></h2>
                <?php endif; ?>
                <?php if(isset($subtitle) && $subtitle): ?>
                    <h3 class="mb-20"><?php echo clean($subtitle); ?></h3>
                <?php endif; ?>
                <?php if(isset($newsletterTitle) && $newsletterTitle): ?>
                    <h5 class="text-muted"><?php echo clean($newsletterTitle); ?></h5>
                <?php endif; ?>
                <form class="input-group form-subcriber mt-30 d-flex newsletter-form" action="<?php echo e(route('public.newsletter.subscribe')); ?>" method="post">
                    <?php echo csrf_field(); ?>
                    <?php if(setting('enable_captcha') && is_plugin_active('captcha')): ?>
                        <div class="form-group">
                            <?php echo Captcha::display(); ?>

                        </div>
                    <?php endif; ?>
                    <input type="email" name="email" class="form-control bg-white font-small" placeholder="<?php echo e(__('Enter your email')); ?>">
                    <button class="btn bg-primary text-white" type="submit"><?php echo e(__('Subscribe')); ?></button>
                </form>
            </div>
            <?php if(isset($image) && $image): ?>
                <div class="col-lg-6 text-right d-none d-lg-block">
                    <img src="<?php echo e(RvMedia::getImageUrl($image)); ?>" alt="<?php echo e(__('Image')); ?>">
                </div>
            <?php endif; ?>
        </div>
    </div>
</div>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/themes/stories/partials/short-codes/about-banner.blade.php ENDPATH**/ ?>