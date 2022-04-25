<?php if(!empty($options)): ?>
    <?php $id = Str::slug($name) . '-'. time(); ?>
    <div class="widget meta-boxes">
        <a data-toggle="collapse" data-parent="#accordion" href="#<?php echo e($id); ?>">
            <h4 class="widget-title">
                <span><?php echo e($name); ?></span>
                <i class="fa fa-angle-down narrow-icon"></i>
            </h4>
        </a>
        <div id="<?php echo e($id); ?>" class="panel-collapse collapse">
            <div class="widget-body">
                <div class="box-links-for-menu">
                    <div class="the-box">
                        <?php echo $options; ?>

                        <div class="text-right">
                            <div class="btn-group btn-group-devided">
                                <a href="#" class="btn-add-to-menu btn btn-primary">
                                    <span class="text"><i class="fa fa-plus"></i> <?php echo e(trans('packages/menu::menu.add_to_menu')); ?></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php endif; ?>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/packages/menu/resources/views//menu-options.blade.php ENDPATH**/ ?>