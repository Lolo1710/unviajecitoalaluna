<div class="col-lg-4 col-md-6">
    <div class="sidebar-widget widget_newsletter wow fadeInUp animated mb-30" data-wow-delay="0.3s">
        <div class="widget-header-2 position-relative mb-30">
            <h5 class="mt-5 mb-30"><?php echo e($config['name']); ?></h5>
        </div>
        <div class="newsletter">
            <p class="font-medium"><?php echo e(__('Subscribe to our newsletter and get our newest updates right on your inbox.')); ?></p>
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
    </div>
</div>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/themes/stories/////widgets/newsletter/templates/frontend.blade.php ENDPATH**/ ?>