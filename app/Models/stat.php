<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class stat extends Model
{
    use HasFactory;
    use Notifiable;

    public $table = 'state';
    protected $fillable = ['state_id','state_title'];

    public function district()
    {
        return $this->hasMany('App\district');
    }
}
