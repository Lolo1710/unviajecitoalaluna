<?php echo Theme::partial('header'); ?>


<div class="container">
    <div class="archive-header pt-50">
        <h2 class="font-weight-900"><?php echo e(SeoHelper::getTitle()); ?></h2>
        <?php echo Theme::partial('breadcrumbs'); ?>

        <div class="bt-1 border-color-1 mt-30 mb-50"></div>
    </div>
    <?php echo Theme::content(); ?>

</div>

<?php echo Theme::partial('footer'); ?>

<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/themes/stories/layouts/default.blade.php ENDPATH**/ ?>