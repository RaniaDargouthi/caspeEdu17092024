<?php $__env->startPush('libraries_top'); ?>

<?php $__env->stopPush(); ?>

<?php $__env->startSection('content'); ?>
    <section class="section">
        <div class="section-header">
            <h1>سلاسل تمارين</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="<?php echo e(getAdminPanelUrl()); ?>"><?php echo e(trans('admin/main.dashboard')); ?></a>
                </div>
                <div class="breadcrumb-item">سلاسل تمارين</div>
            </div>
        </div>



        <div class="section-body">


            <div class="row">
                <div class="col-12 col-md-12">
                    <div class="card">


                        <div class="card-body">
                            <div class="table-responsive">
                                <a href="<?php echo e(route('new_serie')); ?>">اضف سلسلة جديدة</a>
                                <table class="table table-striped font-14">
                                    <tr>
                                        <th class="text-left">اسم السلسلة</th>
                                        <th class="text-left">الكتاب</th>
                                        <th class="text-center">المؤلف</th>
                                        <th class="text-center">عدد التمارين</th>
                                        <th><?php echo e(trans('admin/main.actions')); ?></th>
                                    </tr>

                                    <?php $__currentLoopData = $series; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $serie): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                        <td><?php echo e($serie->serie_name); ?></td>
                                        <td>--</td>
                                        <td>--</td>
                                        <td>--</td>
                                        <td>
                                            <a class="btn btn-sm btn-primary" href="<?php echo e(route('serie_quizzes',['serie' => $serie->id])); ?>">التمارينات</a>
                                            <a class="btn btn-sm btn-info" href="<?php echo e(route('serie.show',['serie' => $serie->id, 'currentQuizIndex' => 0])); ?>">عرض السلسلة</a>

                                        </td>
                                    </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                </table>
                            </div>
                        </div>

                        <div class="card-footer text-center">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts_bottom'); ?>

<?php $__env->stopPush(); ?>

<?php echo $__env->make('admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/ranya/Bureau/projet-jaafar/resources/views/admin/quizzes/lists.blade.php ENDPATH**/ ?>