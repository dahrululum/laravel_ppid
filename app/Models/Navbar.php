<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Navbar extends Model
{
    protected $table = 'navbar';

    public function hasParent()
    {
        return $this->hasMany(Navbar::class,'parent_id','id');
    }
}
