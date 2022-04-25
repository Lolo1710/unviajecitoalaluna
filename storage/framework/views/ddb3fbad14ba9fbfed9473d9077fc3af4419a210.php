<?php echo Form::hidden('gallery', $value ? json_encode($value) : null, ['id' => 'gallery-data', 'class' => 'form-control']); ?>

<div>
    <div class="list-photos-gallery">
        <div class="row" id="list-photos-items">
            <?php if(!empty($value)): ?>
                <?php $__currentLoopData = $value; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="col-md-2 col-sm-3 col-4 photo-gallery-item" data-id="<?php echo e($key); ?>" data-img="<?php echo e(Arr::get($item, 'img')); ?>" data-description="<?php echo e(Arr::get($item, 'description')); ?>">
                        <div class="gallery_image_wrapper">
                            <img src="<?php echo e(RvMedia::getImageUrl(Arr::get($item, 'img'), 'thumb')); ?>" alt="<?php echo e(trans('plugins/gallery::gallery.item')); ?>">
                        </div>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <?php endif; ?>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="form-group">
        <a href="#" class="btn_select_gallery"><?php echo e(trans('plugins/gallery::gallery.select_image')); ?></a>&nbsp;
        <a href="#" class="text-danger reset-gallery <?php if(empty($value)): ?> hidden <?php endif; ?>"><?php echo e(trans('plugins/gallery::gallery.reset')); ?></a>
    </div>
</div>

<div id="edit-gallery-item" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-danger">
                <h4 class="modal-title"><i class="til_img"></i><strong><?php echo e(trans('plugins/gallery::gallery.update_photo_description')); ?></strong></h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>

            <div class="modal-body with-padding">
                <p><input type="text" class="form-control" id="gallery-item-description" placeholder="<?php echo e(trans('plugins/gallery::gallery.update_photo_description_placeholder')); ?>"></p>
            </div>

            <div class="modal-footer">
                <button class="float-left btn btn-danger" id="delete-gallery-item" href="#"><?php echo e(trans('plugins/gallery::gallery.delete_photo')); ?></button>
                <button class="float-right btn btn-secondary" data-dismiss="modal"><?php echo e(trans('core/base::forms.cancel')); ?></button>
                <button class="float-right btn btn-primary" id="update-gallery-item"><?php echo e(trans('core/base::forms.update')); ?></button>
            </div>
        </div>
    </div>
</div>
<!-- end Modal -->
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/plugins/gallery/resources/views//gallery-box.blade.php ENDPATH**/ ?>