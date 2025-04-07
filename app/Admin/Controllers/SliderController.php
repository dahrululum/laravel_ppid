<?php

namespace App\Admin\Controllers;

use \App\Models\Slider;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use Illuminate\Support\Str;
use OpenAdmin\Admin\Controllers\AdminController;

class SliderController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Slider';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Slider());

        $grid->column('id', __('Id'));
        $grid->column('title', __('Title'));
        $grid->column('slug', __('Slug'));
        
        $grid->column('foto', __('Image Slide'))->image();
       // $grid->column('caption', __('Caption'))->limit(10)->style('max-width:100px;word-break:break-all;');
        //$grid->column('status', __('Status'));
        $grid->column('status')->using([
            1 => 'Active',
            2 => 'Not Active',
           
        ], 'Unknown')->dot([
            1 => 'info',
            2 => 'danger',
            
        ], 'warning');
        

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
        $show = new Show(Slider::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Title'));
        $show->field('slug', __('Slug'));
         
        $show->field('foto', __('Foto'));
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
        $form = new Form(new Slider());

        $form->text('title', __('Title'));
        $form->hidden('slug', __('Slug'));
        $form->image('foto', __('Image Slide'))->move('slider/')->uniqueName()->help('ukuran file max: 2MB, format: jpg, png, jpeg : dimension : 1920x1080');
        $form->ckeditor('caption', __('Caption'));
       
        $form->select('status', __('Status'))->options([1 => 'Active', 2 => 'Not Actice'])->default('1');
        $form->saving(function (Form $form) {

            $form->slug = Str::slug($form->title);
        
        });
        return $form;
    }
}
