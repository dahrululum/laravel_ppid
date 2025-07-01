<?php

namespace App\Admin\Controllers;

use \App\Models\Page;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use Illuminate\Support\Str;
use OpenAdmin\Admin\Controllers\AdminController;

class PageController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Page';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Page());

        $grid->column('id', __('Id'));
        $grid->column('title', __('Title'));
        $grid->column('slug', __('Slug'));
         
        $grid->column('created_at', __('Created at'));
        

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
        $show = new Show(Page::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Title'));
        $show->field('slug', __('Slug'));
        $show->field('fulltext', __('Fulltext'));
        $show->field('image', __('Image'));
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
        $form = new Form(new Page());

        $form->text('title', __('Title'));
        $form->hidden('slug');
        
        $form->image('image', __('Foto/Image'))->move('pages/')->uniqueName()->help('ukuran file max: 2MB, format: jpg, png, jpeg')->setWidth(6, 2);
        //$form->multipleImage('image', 'Foto/Images');
        $form->ckeditor('fulltext', __('Fulltext'));
        $form->saving(function (Form $form) {
            //$uniqid = hexdec(uniqid());
            $uniqid = date('Ymdhis');
            $form->slug = $uniqid . '-' . Str::slug($form->title);
           // $form->slug = Str::slug($form->title);
        
        });

        return $form;
    }
}
