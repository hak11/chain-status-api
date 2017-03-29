<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ForumStatus extends Model
{
    use SoftDeletes;

    public function actions()
    {
        return $this->hasMany('App\ForumAction','status_id');
    }
}
