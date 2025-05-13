<?php

namespace App\Admin\Controllers;

use \App\Models\News;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use Illuminate\Support\Str;
use OpenAdmin\Admin\Controllers\AdminController;

class NewsController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'News';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new News());

        $grid->column('id', __('Id'));
        $grid->column('title', __('Title'));
        $grid->column('slug', __('Slug'));
        $grid->column('tags', __('Tags'));
        $grid->column('introtext', __('Introtext'));
        // $grid->column('fulltext', __('Fulltext'));
        //$grid->column('foto', __('Foto'));
        $grid->column('foto', __('Foto/Image'))->image();
        $grid->column('publish_date', __('Publish date'));
        $grid->column('publish_status', __('Publish status'));
        $grid->column('publish_by', __('Publish by'));
        // $grid->column('created_at', __('Created at'));
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
        $show = new Show(News::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Title'));
        $show->field('slug', __('Slug'));
        $show->field('tags', __('Tags'));
        $show->field('introtext', __('Introtext'));
        $show->field('fulltext', __('Fulltext'));
        $show->field('foto', __('Foto'));
        $show->field('publish_date', __('Publish date'));
        $show->field('publish_status', __('Publish status'));
        $show->field('publish_by', __('Publish by'));
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
        $form = new Form(new News());

        $form->text('title', __('Title'));
        $form->hidden('slug');
        //$form->text('slug', __('Slug'));
        //$form->textarea('tags', __('Tags'));
        $form->tags('tags','Tags')->setWidth(8, 2);
        //$form->ckeditor('description', __('Description'))->setWidth(8, 2);
        $form->ckeditor('introtext', __('Introtext'))->options(['height' => 100])->setWidth(8, 2);
        $form->ckeditor('fulltext', __('Fulltext'))->setWidth(8, 2);
        //$form->text('fulltext', __('Fulltext'));
        $form->image('foto', __('Foto/Image'))->move('news/')->uniqueName()->help('ukuran file max: 2MB, format: jpg, png, jpeg')->setWidth(6, 2);
        //$form->text('foto', __('Foto'));
        $form->date('publish_date', __('Publish date'))->default(date('Y-m-d'));
        $form->select('publish_status', __('Publish Status'))->options([1 => 'Active', 2 => 'Not Actice'])->default('1')->setWidth(2, 2);
        //$form->text('publish_status', __('Publish status'));
        $form->text('publish_by', __('Publish by'))->setWidth(3, 2);
        $form->saving(function (Form $form) {
            $uniqid = hexdec(uniqid());
            $form->slug = $uniqid . '-' . Str::slug($form->title);
           // $form->slug = Str::slug($form->title);
        
        });
        return $form;
    }
}
