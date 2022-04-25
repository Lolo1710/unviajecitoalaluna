<?php echo Form::open(['route' => 'public.send.contact', 'method' => 'POST', 'class' => 'contact-form']); ?>

    <div class="contact-form-row">
        <div class="contact-column-6">
            <div class="contact-form-group">
                <label for="contact_name" class="contact-label required"><?php echo e(__('Name')); ?></label>
                <input type="text" class="contact-form-input" name="name" value="<?php echo e(old('name')); ?>" id="contact_name"
                       placeholder="<?php echo e(__('Name')); ?>">
            </div>
        </div>
        <div class="contact-column-6">
            <div class="contact-form-group">
                <label for="contact_email" class="contact-label required"><?php echo e(__('Email')); ?></label>
                <input type="email" class="contact-form-input" name="email" value="<?php echo e(old('email')); ?>" id="contact_email"
                       placeholder="<?php echo e(__('Email')); ?>">
            </div>
        </div>
    </div>
    <div class="contact-form-row">
        <div class="contact-column-6">
            <div class="contact-form-group">
                <label for="contact_address" class="contact-label"><?php echo e(__('Address')); ?></label>
                <input type="text" class="contact-form-input" name="address" value="<?php echo e(old('address')); ?>" id="contact_address"
                       placeholder="<?php echo e(__('Address')); ?>">
            </div>
        </div>
        <div class="contact-column-6">
            <div class="contact-form-group">
                <label for="contact_phone" class="contact-label"><?php echo e(__('Phone')); ?></label>
                <input type="text" class="contact-form-input" name="phone" value="<?php echo e(old('phone')); ?>" id="contact_phone"
                       placeholder="<?php echo e(__('Phone')); ?>">
            </div>
        </div>
    </div>
    <div class="contact-form-row">
        <div class="contact-column-12">
            <div class="contact-form-group">
                <label for="contact_subject" class="contact-label"><?php echo e(__('Subject')); ?></label>
                <input type="text" class="contact-form-input" name="subject" value="<?php echo e(old('subject')); ?>" id="contact_subject"
                       placeholder="<?php echo e(__('Subject')); ?>">
            </div>
        </div>
    </div>
    <div class="contact-form-row">
        <div class="contact-column-12">
            <div class="contact-form-group">
                <label for="contact_content" class="contact-label required"><?php echo e(__('Message')); ?></label>
                <textarea name="content" id="contact_content" class="contact-form-input" rows="5" placeholder="<?php echo e(__('Message')); ?>"><?php echo e(old('content')); ?></textarea>
            </div>
        </div>
    </div>

    <?php if(setting('enable_captcha') && is_plugin_active('captcha')): ?>
        <div class="contact-form-row">
            <div class="contact-column-12">
                <div class="contact-form-group">
                    <?php echo Captcha::display(); ?>

                </div>
            </div>
        </div>
    <?php endif; ?>

    <div class="contact-form-group"><p><?php echo clean(__('The field with (<span style="color:#FF0000;">*</span>) is required.')); ?></p></div>

    <div class="contact-form-group">
        <button type="submit" class="contact-button"><?php echo e(__('Send')); ?></button>
    </div>

    <div class="contact-form-group">
        <div class="contact-message contact-success-message" style="display: none"></div>
        <div class="contact-message contact-error-message" style="display: none"></div>
    </div>

<?php echo Form::close(); ?>

<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/plugins/contact/resources/views//forms/contact.blade.php ENDPATH**/ ?>