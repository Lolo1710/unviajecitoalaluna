<a data-type="select"
   data-source="<?php echo e(route('roles.list.json')); ?>"
   data-pk="<?php echo e($item->id); ?>"
   data-url="<?php echo e(route('roles.assign')); ?>"
   data-value="<?php echo e($item->role_id ? $item->role_id : 0); ?>"
   data-title="<?php echo e(trans('core/acl::users.assigned_role')); ?>"
   class="editable"
   href="#">
    <?php echo e($item->role_name ? $item->role_name : trans('core/acl::users.no_role_assigned')); ?>

</a>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/core/acl/resources/views//users/partials/role.blade.php ENDPATH**/ ?>