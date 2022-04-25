<div class="sidebar-widget widget-about mb-50 pt-30 pr-30 pb-30 pl-30 bg-white border-radius-5 has-border  wow fadeInUp animated">
    <?php if($config['image']): ?>
        <img class="about-author-img mb-25" src="<?php echo e(RvMedia::getImageUrl($config['image'])); ?>" alt="<?php echo e(__('Author')); ?>">
    <?php endif; ?>
    <h5 class="mb-20"><?php echo e($config['name']); ?></h5>
    <p class="font-medium text-muted"><?php echo e($config['description']); ?></p>
    <strong><?php echo e(__('Follow me')); ?>: </strong>
    <ul class="header-social-network d-inline-block list-inline color-white mb-20">
        <?php for($i = 1; $i <= 5; $i++): ?>
            <?php if(theme_option('social_' . $i . '_url') && theme_option('social_' . $i . '_name')): ?>
                <li class="list-inline-item"><a style="background: <?php echo e(theme_option('social_' . $i . '_color')); ?>" href="<?php echo e(theme_option('social_' . $i . '_url')); ?>" target="_blank" title="<?php echo e(theme_option('social_' . $i . '_name')); ?>"><i class="elegant-icon <?php echo e(theme_option('social_' . $i . '_icon')); ?>"></i></a></li>
            <?php endif; ?>
        <?php endfor; ?>
    </ul>
</div>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/themes/stories/////widgets/about/templates/frontend.blade.php ENDPATH**/ ?>