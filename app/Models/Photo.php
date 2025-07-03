<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Photo extends Model
{
    protected $table = 'photo';
    public function setFotosAttribute($pic)
    {
        if (is_array($pic)) {
            $this->attributes['fotos'] = json_encode($pic);
        }
    }

    public function getFotosAttribute($pic)
    {
        return json_decode($pic, true);
    }
}
