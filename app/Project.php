<?php

namespace App;

use App\Client;
use Illuminate\Database\Eloquent\Model;

class project extends Model
{
    public function client(){
        return $this->belongsTo(Client::class);
    }

    public function breakdown(){//Projectcost
        return $this->hasMany(Cost::class);

    }
}