<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ForumAction extends Model
{
    use SoftDeletes;

    public function status()
    {
        return $this->belongsTo('App\ForumStatus');
    }
}
