<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cost extends Model
{
    public function project(){
        return $this->belongsTo(Project::class);
    }

    public function cost_type(){// cost_type
        return $this->belongsTo(Cost_type::class)->orderby('parent_id');
    }

}
