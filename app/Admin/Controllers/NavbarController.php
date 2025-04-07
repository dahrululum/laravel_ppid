<?php

namespace App\Admin\Controllers;

use \App\Models\Navbar;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use Illuminate\Support\Str;
use OpenAdmin\Admin\Widgets\Table;
use OpenAdmin\Admin\Controllers\AdminController;

class NavbarController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Navbar';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Navbar());
        
         
        $grid->model()->orderBy('parent_id', 'asc');
        $grid->column('id', __('Id'));
        $grid->column('parent_id', __('Parent id'))->default('0');
        $grid->column('name', __('Name'));
            // $grid->column('name', __('Name'))->expand(function ($model) {

            //     $subcol = $model->hasParent()->take(10)->get()->map(function ($subcol) {
            //         return $subcol->only(['id', 'name', 'created_at']);
            //     });

            //     //dd($subcol);
            //     return new Table(['ID', 'name'], $subcol->toArray());
            // });    
        
       
        $grid->column('uri', __('Uri'));
      
      
        
       
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
        $show = new Show(Navbar::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('parent_id', __('Parent id'))->default('0');
        //$show->field('order', __('Order'));
        $show->field('name', __('Name'));
       // $show->field('icon', __('Icon'));
        $show->field('uri', __('Uri'));
       // $show->field('permission', __('Permission'));
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
        $form = new Form(new Navbar());

        //$form->text('parent_id', __('Parent id'));
        //$form->select('parent_id','Parent ID')->options([1 => 'foo', 2 => 'bar', 'val' => 'Option name']);
        
        $form->select('parent_id', __("Parent ID"))->options(Navbar::all()->pluck('name', 'id'))
        ->defaultOnEmpty(0)->setWidth(6, 2);
        
        //$form->text('order', __('Order'));
        $form->text('name', __('Name'))->setWidth(5, 2);
        $form->hidden('slug', 'Slug')->attribute(['id' => 'slug'])->setWidth(4, 2);
         
        //$form->text('icon', __('Icon'));
        $form->text('uri', __('Uri'))->setWidth(2, 2);
        //$form->text('permission', __('Permission'));
        $form->saving(function (Form $form) {

            $form->slug = Str::slug($form->name);
        
        });
        return $form;
    }
}
