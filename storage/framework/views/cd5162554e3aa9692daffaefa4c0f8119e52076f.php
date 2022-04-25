<?php $__currentLoopData = $supportedLocales; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $localeCode => $properties): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <link rel="alternate" href="<?php echo e(Language::getLocalizedURL($localeCode, url()->current())); ?>" hreflang="<?php echo e($localeCode); ?>" />
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/plugins/language/resources/views//partials/hreflang.blade.php ENDPATH**/ ?>