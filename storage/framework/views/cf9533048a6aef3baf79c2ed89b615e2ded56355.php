<?php $__env->startSection('content'); ?>
    <div id="main-settings">
        <license-component
            verify-url="<?php echo e(route('settings.license.verify')); ?>"
            activate-license-url="<?php echo e(route('settings.license.activate')); ?>"
            deactivate-license-url="<?php echo e(route('settings.license.deactivate')); ?>"
        ></license-component>
    </div>
    <?php echo Form::open(['route' => ['settings.edit']]); ?>

        <div class="max-width-1200">
            <div class="flexbox-annotated-section">

                <div class="flexbox-annotated-section-annotation">
                    <div class="annotated-section-title pd-all-20">
                        <h2><?php echo e(trans('core/setting::setting.general.general_block')); ?></h2>
                    </div>
                    <div class="annotated-section-description pd-all-20 p-none-t">
                        <p class="color-note"><?php echo e(trans('core/setting::setting.general.description')); ?></p>
                    </div>
                </div>

                <div class="flexbox-annotated-section-content">
                    <div class="wrapper-content pd-all-20">
                        <div class="form-group">
                            <label class="text-title-field"
                                   for="admin_email"><?php echo e(trans('core/setting::setting.general.admin_email')); ?></label>
                            <input type="email" class="next-input" name="admin_email" id="admin_email"
                                   value="<?php echo e(setting('admin_email')); ?>">
                        </div>

                        <div class="form-group">
                            <label class="text-title-field"
                                   for="time_zone"><?php echo e(trans('core/setting::setting.general.time_zone')); ?>

                            </label>
                            <div class="ui-select-wrapper">
                                <select name="time_zone" class="ui-select form-control select-search-full" id="time_zone">
                                    <?php $__currentLoopData = DateTimeZone::listIdentifiers(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $timezone): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option value="<?php echo e($timezone); ?>" <?php if(setting('time_zone', 'UTC') === $timezone): ?> selected <?php endif; ?>><?php echo e($timezone); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                                <svg class="svg-next-icon svg-next-icon-size-16">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#select-chevron"></use>
                                </svg>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="text-title-field"
                                   for="locale"><?php echo e(trans('core/setting::setting.general.locale')); ?>

                            </label>
                            <div class="ui-select-wrapper">
                                <select name="locale" class="ui-select form-control select-search-full" id="locale">
                                    <?php
                                        $defaultLocale = setting('locale', config('app.locale'));
                                        if (app()->environment('demo') && session('site-locale') && array_key_exists(session('site-locale'), \Botble\Base\Supports\Language::getAvailableLocales())) {
                                            $defaultLocale = session('site-locale');
                                        }
                                    ?>
                                    <?php $__currentLoopData = \Botble\Base\Supports\Language::getAvailableLocales(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $locale): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option value="<?php echo e($locale['locale']); ?>" <?php if($defaultLocale === $locale['locale']): ?> selected <?php endif; ?>><?php echo e($locale['name']); ?> - <?php echo e($locale['locale']); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                                <svg class="svg-next-icon svg-next-icon-size-16">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#select-chevron"></use>
                                </svg>
                            </div>
                        </div>

                        <div class="form-group">

                            <label class="text-title-field"
                                   for="locale_direction"><?php echo e(trans('core/setting::setting.general.locale_direction')); ?>

                            </label>
                            <label class="hrv-label">
                                <input type="radio" name="locale_direction" class="hrv-radio" value="ltr"
                                       <?php if(setting('locale_direction', 'ltr') == 'ltr'): ?> checked <?php endif; ?>><?php echo e(trans('core/setting::setting.locale_direction_ltr')); ?>

                            </label>
                            <label class="hrv-label">
                                <input type="radio" name="locale_direction" class="hrv-radio" value="rtl"
                                       <?php if(setting('locale_direction', 'ltr') == 'rtl'): ?> checked <?php endif; ?>><?php echo e(trans('core/setting::setting.locale_direction_rtl')); ?>

                            </label>
                        </div>

                        <div class="form-group">
                            <input type="hidden" name="enable_send_error_reporting_via_email" value="0">
                            <label>
                                <input type="checkbox" class="hrv-checkbox" value="1" <?php if(setting('enable_send_error_reporting_via_email')): ?> checked <?php endif; ?> name="enable_send_error_reporting_via_email">
                                <?php echo e(trans('core/setting::setting.general.enable_send_error_reporting_via_email')); ?>

                            </label>
                        </div>

                    </div>
                </div>

            </div>

            <div class="flexbox-annotated-section">

                <div class="flexbox-annotated-section-annotation">
                    <div class="annotated-section-title pd-all-20">
                        <h2><?php echo e(trans('core/setting::setting.general.admin_appearance_title')); ?></h2>
                    </div>
                    <div class="annotated-section-description pd-all-20 p-none-t">
                        <p class="color-note"><?php echo e(trans('core/setting::setting.general.admin_appearance_description')); ?></p>
                    </div>
                </div>

                <div class="flexbox-annotated-section-content">
                    <div class="wrapper-content pd-all-20">
                        <div class="form-group">
                            <label class="text-title-field"
                                   for="admin-logo"><?php echo e(trans('core/setting::setting.general.admin_logo')); ?>

                            </label>
                            <div class="admin-logo-image-setting">
                                <?php echo Form::mediaImage('admin_logo', setting('admin_logo'), ['allow_thumb' => false]); ?>

                            </div>
                        </div>
                        <div class="form-group">
                            <label class="text-title-field"
                                   for="admin-favicon"><?php echo e(trans('core/setting::setting.general.admin_favicon')); ?>

                            </label>
                            <div class="admin-favicon-image-setting">
                                <?php echo Form::mediaImage('admin_favicon', setting('admin_favicon'), ['allow_thumb' => false]); ?>

                            </div>
                        </div>

                        <div class="form-group">
                            <label class="text-title-field"
                                   for="admin-login-screen-backgrounds"><?php echo e(trans('core/setting::setting.general.admin_login_screen_backgrounds')); ?>

                            </label>
                            <div class="admin-login-screen-backgrounds-setting">
                                <?php echo Form::mediaImages('login_screen_backgrounds[]', setting('login_screen_backgrounds')); ?>

                            </div>
                        </div>

                        <div class="form-group">
                            <label class="text-title-field"
                                   for="admin_title"><?php echo e(trans('core/setting::setting.general.admin_title')); ?></label>
                            <input data-counter="120" type="text" class="next-input" name="admin_title" id="admin_title"
                                   value="<?php echo e(setting('admin_title', config('app.name'))); ?>">
                        </div>

                        <div class="form-group">

                            <label class="text-title-field"
                                   for="rich_editor"><?php echo e(trans('core/setting::setting.general.rich_editor')); ?>

                            </label>
                            <label class="hrv-label">
                                <input type="radio" name="rich_editor" class="hrv-radio" value="ckeditor"
                                       <?php if(setting('rich_editor', 'ckeditor') == 'ckeditor'): ?> checked <?php endif; ?>>CkEditor
                            </label>
                            <label class="hrv-label">
                                <input type="radio" name="rich_editor" class="hrv-radio" value="tinymce"
                                       <?php if(setting('rich_editor', 'ckeditor') == 'tinymce'): ?> checked <?php endif; ?>>TinyMCE
                            </label>
                        </div>

                        <div class="form-group">
                            <label class="text-title-field"
                                   for="default_admin_theme"><?php echo e(trans('core/setting::setting.general.default_admin_theme')); ?>

                            </label>
                            <div class="ui-select-wrapper">
                                <select name="default_admin_theme" class="ui-select" id="default_admin_theme">
                                    <?php $__currentLoopData = Assets::getThemes(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $theme => $path): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option value="<?php echo e($theme); ?>" <?php if(setting('default_admin_theme', config('core.base.general.default-theme')) === $theme): ?> selected <?php endif; ?>>
                                            <?php echo e(Str::studly($theme)); ?>

                                        </option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                                <svg class="svg-next-icon svg-next-icon-size-16">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#select-chevron"></use>
                                </svg>
                            </div>
                        </div>

                        <div class="form-group">
                                <input type="hidden" name="enable_change_admin_theme" value="0">
                                <label><input type="checkbox" class="hrv-checkbox" value="1"
                                              <?php if(setting('enable_change_admin_theme')): ?> checked <?php endif; ?> name="enable_change_admin_theme"> <?php echo e(trans('core/setting::setting.general.enable_change_admin_theme')); ?> </label>
                        </div>
                    </div>
                </div>
            </div>

            <div class="flexbox-annotated-section">
                <div class="flexbox-annotated-section-annotation">
                    <div class="annotated-section-title pd-all-20">
                        <h2><?php echo e(trans('core/setting::setting.general.cache_block')); ?></h2>
                    </div>
                    <div class="annotated-section-description pd-all-20 p-none-t">
                        <p class="color-note"><?php echo e(trans('core/setting::setting.general.cache_description')); ?></p>
                    </div>
                </div>

                <div class="flexbox-annotated-section-content">
                    <div class="wrapper-content pd-all-20">

                        <div class="form-group">
                            <label class="text-title-field"
                                   for="enable_cache"><?php echo e(trans('core/setting::setting.general.enable_cache')); ?>

                            </label>
                            <label class="hrv-label">
                                <input type="radio" name="enable_cache" class="hrv-radio" value="1" <?php if(setting('enable_cache')): ?> checked <?php endif; ?>>
                                <?php echo e(trans('core/setting::setting.general.yes')); ?>

                            </label>
                            <label class="hrv-label">
                                <input type="radio" name="enable_cache" class="hrv-radio" value="0" <?php if(!setting('enable_cache')): ?> checked <?php endif; ?>>
                                <?php echo e(trans('core/setting::setting.general.no')); ?>

                            </label>
                        </div>

                        <div class="form-group">
                            <label class="text-title-field"
                                   for="cache_time"><?php echo e(trans('core/setting::setting.general.cache_time')); ?></label>
                            <input type="number" class="next-input" name="cache_time" id="cache_time"
                                   value="<?php echo e(setting('cache_time', 10)); ?>">
                        </div>

                        <div class="form-group">
                            <label class="text-title-field"
                                   for="enable_cache"><?php echo e(trans('core/setting::setting.general.cache_admin_menu')); ?>

                            </label>
                            <label class="hrv-label">
                                <input type="radio" name="cache_admin_menu_enable" class="hrv-radio" value="1" <?php if(setting('cache_admin_menu_enable')): ?> checked <?php endif; ?>>
                                <?php echo e(trans('core/setting::setting.general.yes')); ?>

                            </label>
                            <label class="hrv-label">
                                <input type="radio" name="cache_admin_menu_enable" class="hrv-radio" value="0" <?php if(!setting('cache_admin_menu_enable')): ?> checked <?php endif; ?>>
                                <?php echo e(trans('core/setting::setting.general.no')); ?>

                            </label>
                        </div>
                    </div>
                </div>
            </div>

            <?php echo apply_filters(BASE_FILTER_AFTER_SETTING_CONTENT, null); ?>


            <div class="flexbox-annotated-section" style="border: none">
                <div class="flexbox-annotated-section-annotation">
                    &nbsp;
                </div>
                <div class="flexbox-annotated-section-content">
                    <button class="btn btn-info" type="submit"><?php echo e(trans('core/setting::setting.save_settings')); ?></button>
                </div>
            </div>
        </div>
    <?php echo Form::close(); ?>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('core/base::layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/core/setting/resources/views//index.blade.php ENDPATH**/ ?>