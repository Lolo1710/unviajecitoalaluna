<ul <?php echo $options; ?>>
    <?php $__currentLoopData = $items; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <?php $id = 'menu-id-' . strtolower(Str::slug(str_replace('\\', ' ', get_class($model)))) . '-' . $row->id; ?>
        <li>
            <label for="<?php echo e($id); ?>" data-title="<?php echo e($row->name); ?>" data-reference-id="<?php echo e($row->id); ?>" data-reference-type="<?php echo e(get_class($model)); ?>">
                <?php echo Form::checkbox('menu_id', $row->id, null, compact('id')); ?>

                <?php echo e($row->name); ?>

            </label>

            <?php if($row->children): ?>
                <?php echo Menu::generateSelect([
                        'model' => $model,
                        'items' => $row->children
                    ]); ?>

            <?php endif; ?>
        </li>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</ul>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/packages/menu/resources/views//partials/select.blade.php ENDPATH**/ ?>