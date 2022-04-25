<?php if(request()->input('media-action') === 'select-files'): ?>
    <html>
        <head>
            <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">
            <?php echo Assets::renderHeader(['core']); ?>

            <?php echo RvMedia::renderHeader(); ?>

        </head>
        <body>
            <?php echo RvMedia::renderContent(); ?>


            <?php echo $__env->make('core/base::elements.common', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <?php echo Assets::renderFooter(); ?>

            <?php echo RvMedia::renderFooter(); ?>

        </body>
    </html>
<?php else: ?>
    <?php echo RvMedia::renderHeader(); ?>


    <?php echo RvMedia::renderContent(); ?>


    <?php echo RvMedia::renderFooter(); ?>

<?php endif; ?>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/core/media/resources/views//popup.blade.php ENDPATH**/ ?>