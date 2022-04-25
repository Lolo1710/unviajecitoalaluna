<?php $__currentLoopData = $widgetAreas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <?php if(class_exists($item->widget_id, false)): ?>
        <?php $widget = new $item->widget_id; ?>
        <li data-id="<?php echo e($widget->getId()); ?>" data-position="<?php echo e($item->position); ?>">
            <div class="widget-handle">
                <p class="widget-name"><?php echo e($widget->getConfig()['name']); ?> <span class="text-right"><i class="fa fa-caret-down"></i></span></p>
            </div>
            <div class="widget-content">
                <form method="post">
                    <input type="hidden" name="id" value="<?php echo e($widget->getId()); ?>">
                    <?php echo $widget->form($item->sidebar_id, $item->position); ?>

                    <div class="widget-control-actions">
                        <div class="float-left">
                            <button class="btn btn-danger widget-control-delete"><?php echo e(trans('packages/widget::widget.delete')); ?></button>
                        </div>
                        <div class="float-right text-right">
                            <button class="btn btn-primary widget_save"><?php echo e(trans('core/base::forms.save')); ?></button>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </form>
            </div>
        </li>
    <?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/packages/widget/resources/views//item.blade.php ENDPATH**/ ?>