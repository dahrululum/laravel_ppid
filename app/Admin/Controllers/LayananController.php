<?php

namespace App\Admin\Controllers;

use \App\Models\Layanan;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use Illuminate\Support\Str;
use OpenAdmin\Admin\Controllers\AdminController;

class LayananController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Layanan';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Layanan());

        $grid->column('id', __('Id'));
        $grid->column('title', __('Title'));
        //$grid->column('slug', __('Slug'));
        $grid->column('description', __('Description'));
        $grid->column('foto', __('Foto'))->image();
        $grid->column('urlna', __('Urlna'));
        $grid->column('status', __('Status'));
        
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
        $show = new Show(Layanan::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Title'));
        $show->field('slug', __('Slug'));
        $show->field('description', __('Description'));
        $show->field('foto', __('Foto'));
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
        $form = new Form(new Layanan());
        
        $form->text('title', __('Title'))->setWidth(6, 2);
        $form->hidden('slug');
        $form->image('foto', __('Foto/Image'))->move('layanan/')->uniqueName()->help('ukuran file max: 2MB, format: jpg, png, jpeg : dimension : 800x800')->setWidth(6, 2);
        //$form->text('slug', __('Slug'));
        $form->ckeditor('description', __('Description'))->setWidth(8, 2);
        //$form->textarea('description', __('Description'))->setWidth(8, 2);
        //$form->text('foto', __('Foto'));
        $form->url('urlna','Url')->default('https://')->help('contoh: https://www.google.com')->setWidth(5, 2);
        $form->select('status', __('Status'))->options([1 => 'Active', 2 => 'Not Actice'])->default('1')->setWidth(3, 2);
        $form->saving(function (Form $form) {

            $form->slug = Str::slug($form->nama);
        
        });

        return $form;
    }
}
