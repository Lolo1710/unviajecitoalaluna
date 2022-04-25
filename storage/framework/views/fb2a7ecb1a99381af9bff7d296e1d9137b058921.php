<div class="col-lg-2 col-md-6">
    <div class="sidebar-widget widget_categories wow fadeInUp animated mb-30" data-wow-delay="0.1s">
        <div class="widget-header-2 position-relative mb-30">
            <h5 class="mt-5 mb-30"><?php echo e($config['name']); ?></h5>
        </div>
        <?php echo Menu::generateMenu(['slug' => $config['menu_id'], 'options' => ['class' => 'font-small']]); ?>

    </div>
</div>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/themes/stories/////widgets/custom-menu/templates/frontend.blade.php ENDPATH**/ ?>