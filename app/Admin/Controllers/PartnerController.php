<?php

namespace App\Admin\Controllers;

use \App\Models\Partner;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use Illuminate\Support\Str;
use OpenAdmin\Admin\Controllers\AdminController;

class PartnerController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Partner';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Partner());

        $grid->column('id', __('Id'));
        $grid->column('nama', __('Nama'));
        //$grid->column('alias', __('Alias'));
        $grid->column('logo', __('Logo'))->image();
        $grid->column('urlna', __('Urlna'));
        $grid->column('status', __('Status'));
        //$grid->column('created_at', __('Created at'));
       // $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Partner::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('nama', __('Nama'));
        $show->field('alias', __('Alias'));
       
        $show->field('urlna', __('Urlna'));
        $show->field('status', __('Status'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Partner());
        $form->setWidth(10, 1);
        $form->text('nama', __('Nama'))->setWidth(6, 1);
        $form->hidden('alias');
        $form->divider();
        //$form->text('alias', __('Alias'));
        $form->image('logo', __('Logo'))->move('partner/')->uniqueName()->help('ukuran file max: 2MB, format: jpg, png, jpeg : dimension : 800x800')->setWidth(6, 1);
        $form->divider();
        //$form->text('logo', __('Logo'));
        $form->url('urlna','Url')->default('https://')->help('contoh: https://www.google.com')->setWidth(5, 1);
        $form->divider();
        $form->select('status', __('Status'))->options([1 => 'Active', 2 => 'Not Actice'])->default('1')->setWidth(3, 1);
        $form->saving(function (Form $form) {

            $form->alias = Str::slug($form->nama);
        
        });

        return $form;
    }
}
