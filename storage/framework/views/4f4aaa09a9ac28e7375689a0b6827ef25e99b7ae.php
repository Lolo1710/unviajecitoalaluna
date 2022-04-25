<div class="breadcrumb">
    <?php $__currentLoopData = Theme::breadcrumb()->getCrumbs(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $i => $crumb): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <?php if($i != (count(Theme::breadcrumb()->getCrumbs()) - 1)): ?>
            <a href="<?php echo e($crumb['url']); ?>"><?php echo $crumb['label']; ?></a><span></span>
        <?php else: ?>
            <?php echo $crumb['label']; ?>

        <?php endif; ?>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</div>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/themes/stories/partials/breadcrumbs.blade.php ENDPATH**/ ?>