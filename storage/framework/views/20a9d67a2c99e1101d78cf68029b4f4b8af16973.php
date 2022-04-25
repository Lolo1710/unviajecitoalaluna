<!DOCTYPE html>
<html lang="<?php echo e(app()->getLocale()); ?>">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=5, user-scalable=1" name="viewport"/>

        <!-- Fonts-->
        <link href="https://fonts.googleapis.com/css2?family=<?php echo e(urlencode(theme_option('primary_font', 'Noto Sans JP'))); ?>:wght@400;500;700;900&display=swap" rel="stylesheet" type="text/css">
        <!-- CSS Library-->

        <style>
            :root {
                --color-primary: <?php echo e(theme_option('primary_color', '#5869DA')); ?>;
                --color-secondary: <?php echo e(theme_option('secondary_color', '#2d3d8b')); ?>;
                --color-danger: <?php echo e(theme_option('danger_color', '#e3363e')); ?>;
                --primary-font: '<?php echo e(theme_option('primary_font', 'Noto Sans JP')); ?>', sans-serif;
            }
        </style>

        <?php echo Theme::header(); ?>

    </head>
    <body <?php if(BaseHelper::siteLanguageDirection() == 'rtl'): ?> dir="rtl" <?php endif; ?>>
        <div id="alert-container"></div>
        <div class="scroll-progress primary-bg"></div>
        <?php if(theme_option('preloader_enabled', 'no') == 'yes'): ?>
            <!-- Start Preloader -->
            <div class="preloader text-center">
                <div class="circle"></div>
            </div>
        <?php endif; ?>
        <!--Offcanvas sidebar-->
        <aside id="sidebar-wrapper" class="custom-scrollbar offcanvas-sidebar" data-load-url="<?php echo e(route('theme.ajax-get-panel-inner')); ?>">
            <button class="off-canvas-close"><i class="elegant-icon icon_close"></i></button>
            <div class="sidebar-inner">
                <div class="sidebar-inner-loading">
                    <div class="half-circle-spinner">
                        <div class="circle circle-1"></div>
                        <div class="circle circle-2"></div>
                    </div>
                </div>
            </div>
        </aside>
        <!-- Start Header -->
        <header class="main-header header-style-1 font-heading">
            <div class="header-top">
                <div class="container">
                    <div class="row pt-20 pb-20">
                        <div class="col-md-3 col-6">
                            <?php if(theme_option('logo')): ?>
                                <a href="<?php echo e(url('')); ?>"><img class="logo" src="<?php echo e(RvMedia::getImageUrl(theme_option('logo'))); ?>" alt="<?php echo e(setting('site_title')); ?>"></a>
                            <?php endif; ?>
                        </div>
                        <div class="col-md-9 col-6 text-right header-top-right">
                            <?php echo Menu::renderMenuLocation('header-menu', [
                                'view'    => 'top-menu',
                                'options' => ['class' => 'list-inline nav-topbar d-none d-md-inline'],
                            ]); ?>

                            <div class="language-wrapper d-none d-md-inline">
                                <?php echo apply_filters('language_switcher'); ?>

                            </div>
                            <span class="vertical-divider mr-20 ml-20 d-none d-md-inline"></span>
                            <button class="search-icon d-none d-md-inline"><span class="mr-15 text-muted font-small"><i class="elegant-icon icon_search mr-5"></i><?php echo e(__('Search')); ?></span></button>
                            <?php if(theme_option('action_button_text') && theme_option('action_button_url')): ?>
                                <a href="<?php echo e(url(theme_option('action_button_url'))); ?>" class="btn btn-radius bg-primary text-white ml-15 font-small box-shadow"><?php echo e(theme_option('action_button_text')); ?></a>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-sticky">
                <div class="container align-self-center">
                    <div class="mobile_menu d-lg-none d-block"></div>
                    <div class="main-nav d-none d-lg-block float-left">
                        <nav>
                            <?php echo Menu::renderMenuLocation('main-menu', [
                                'view'    => 'menu',
                                'options' => ['class' => 'main-menu d-none d-lg-inline font-small'],
                            ]); ?>


                            <?php echo Menu::renderMenuLocation('main-menu', [
                                'view'    => 'menu',
                                'options' => ['class' => 'd-block d-lg-none text-muted', 'id' => 'mobile-menu'],
                            ]); ?>

                        </nav>
                    </div>
                    <div class="float-right header-tools text-muted font-small">
                        <ul class="header-social-network d-inline-block list-inline mr-15">
                            <?php for($i = 1; $i <= 5; $i++): ?>
                                <?php if(theme_option('social_' . $i . '_url') && theme_option('social_' . $i . '_name')): ?>
                                    <li class="list-inline-item"><a class="social-icon text-xs-center" style="background: <?php echo e(theme_option('social_' . $i . '_color')); ?>" href="<?php echo e(theme_option('social_' . $i . '_url')); ?>" target="_blank" title="<?php echo e(theme_option('social_' . $i . '_name')); ?>"><i class="elegant-icon <?php echo e(theme_option('social_' . $i . '_icon')); ?>"></i></a></li>
                                <?php endif; ?>
                            <?php endfor; ?>
                        </ul>
                        <div class="off-canvas-toggle-cover d-inline-block">
                            <div class="off-canvas-toggle hidden d-inline-block" id="off-canvas-toggle">
                                <span></span>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </header>
        <!--Start search form-->
        <div class="main-search-form">
            <div class="container">
                <div class="pt-50 pb-50 ">
                    <div class="row mb-20">
                        <div class="col-12 align-self-center main-search-form-cover m-auto">
                            <p class="text-center"><span class="search-text-bg"><?php echo e(__('Search')); ?></span></p>
                            <form action="<?php echo e(route('public.search')); ?>" class="search-header">
                                <div class="input-group w-100">
                                    <input type="text" name="q" class="form-control" placeholder="<?php echo e(__('Search stories, places and people')); ?>">
                                    <div class="input-group-append">
                                        <button class="btn btn-search bg-white" type="submit">
                                            <i class="elegant-icon icon_search"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Start Main content -->
        <main>
<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/themes/stories/partials/header.blade.php ENDPATH**/ ?>