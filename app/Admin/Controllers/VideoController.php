<?php

namespace App\Admin\Controllers;

use \App\Models\Video;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use Illuminate\Support\Str;
use OpenAdmin\Admin\Controllers\AdminController;

class VideoController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Video';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Video());

        $grid->column('id', __('Id'));
        $grid->column('title', __('Title'));
        
        $grid->column('foto', __('Foto'))->image();
        $grid->column('urlna', __('Urlna'));
        $grid->column('publish_status')->using([
            1 => 'Active ',
            2 => 'Not Active',
          
        ], 'Unknown')->dot([
            1 => 'success',
            2 => 'danger',
           
        ], 'warning');
        // $grid->column('fotos', __('Gallery Photo'))->carousel();
        
        $grid->column('publish_date', __('Publish date'));
        $grid->column('publish_by', __('Publish by'));

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
        $show = new Show(Video::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Title'));
        $show->field('slug', __('Slug'));
        $show->field('introtext', __('Introtext'));
        $show->field('fulltext', __('Fulltext'));
        $show->field('foto', __('Foto'));
        $show->field('urlna', __('Urlna'));
        $show->field('publish_status', __('Publish status'));
        $show->field('publish_date', __('Publish date'));
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
        $form = new Form(new Video());

        $form->text('title', __('Title'));
        $form->hidden('slug');
        $form->ckeditor('introtext', __('Introtext'))->options(['height' => 100])->setWidth(8, 2);
       
        $form->image('foto', __('Foto Video'))->move('videos')->uniqueName()->help('ukuran file max: 2MB, format: jpg, png, jpeg')->setWidth(6, 2);
        $form->text('urlna', __('Video Url Youtube'))->help('Contoh: https://www.youtube.com/watch?v=QAI77OmwZSY')->setWidth(6, 2);
        $form->date('publish_date', __('Publish date'))->default(date('Y-m-d'));
        $form->select('publish_status', __('Publish Status'))->options([1 => 'Active', 2 => 'Not Actice'])->default('1')->setWidth(2, 2);
        //$form->text('publish_status', __('Publish status'));
        $form->text('publish_by', __('Publish by'))->setWidth(3, 2);
        $form->saving(function (Form $form) {
            //$uniqid = hexdec(uniqid());
            $uniqid = date('Ymdhis');
            $form->slug = $uniqid . '-' . Str::slug($form->title);
           // $form->slug = Str::slug($form->title);
        
        });

        return $form;
    }
}
