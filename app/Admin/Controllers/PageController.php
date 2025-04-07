<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Page;

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
        
        $grid->column('image', __('Image'))->image();
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
        $form->text('slug', __('Slug'));
        $form->html('
            <script>
                function slugify(text) {
                    return text
                        .toString()
                        .toLowerCase()
                        .trim()
                        .replace(/\\s+/g, "-")           // Replace spaces with -
                        .replace(/[^\w\\-]+/g, "")       // Remove all non-word chars
                        .replace(/\\-\\-+/g, "-");        // Replace multiple - with single -
                }

                document.addEventListener("DOMContentLoaded", function() {
                    document.getElementById("title").addEventListener("input", function(e) {
                        let title = e.target.value;
                        document.getElementById("slug").value = slugify(title);
                    });
                });
            </script>
        ');
        //$form->image('image', __('Image'));
        $form->multipleImage('image', 'Foto/Images');
        $form->ckeditor('fulltext', __('Fulltext'));
       

        return $form;
    }
}
