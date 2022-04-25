<?php
    SeoHelper::setTitle(__('404 - Not found'));
    Theme::fire('beforeRenderTheme', app(\Botble\Theme\Contracts\Theme::class));
?>

<?php echo Theme::partial('header'); ?>


<main class="bg-grey pt-80 pb-50">
    <div class="container">
        <div class="row pt-80">
            <div class="col-lg-6 col-md-12 d-lg-block d-none pr-50"><img src="<?php echo e(Theme::asset()->url('images/page-not-found.png')); ?>" alt="<?php echo e(__('Not found')); ?>"></div>
            <div class="col-lg-6 col-md-12 pl-50 text-md-center text-lg-left">
                <h1 class="mb-30 font-weight-900 page-404">404</h1>
                <form action="<?php echo e(route('public.search')); ?>" method="get" class="search-form d-lg-flex open-search mb-30">
                    <i class="icon-search"></i>
                    <input class="form-control" name="q" type="text" placeholder="<?php echo e(__('Search...')); ?>">
                </form>
                <p><?php echo e(__('The link you clicked may be broken or the page may have been removed.')); ?><br> <?php echo e(__('visit the')); ?> <a href="<?php echo e(url('')); ?>"><?php echo e(__('Homepage')); ?></a>
                </p>
                <div class="form-group">
                    <button type="submit" class="button button-contactForm mt-30"><a class="text-white" href="<?php echo e(url('')); ?>"><?php echo e(__('Homepage')); ?></a></button>
                </div>
            </div>
        </div>
    </div>
</main>

<?php echo Theme::partial('footer'); ?>



<?php /**PATH /home/inmobi85/unviajecitoalaluna.bestlinecancun.com/platform/themes/stories/views/404.blade.php ENDPATH**/ ?>