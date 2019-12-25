<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cost_type extends Model
{
    protected $table = 'cost_types';

    // public function projectcost(){
    //     // return $this->hasMany(Cost::class);
    //     return $this->belongsToMany('App\Project', 'costs', 'cost_type_id', 'project_id');
    // }

    public function parent()
    {
        return $this->belongsTo('App\Cost_type', 'parent_id');
    }

    public function children()
    {
        return $this->hasMany('App\Cost_type', 'parent_id')>orderBy('parent_id', 'DESC');
    }

}
