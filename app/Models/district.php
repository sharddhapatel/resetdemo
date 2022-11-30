<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class district extends Model
{
    use HasFactory;
    use Notifiable;

    public $table = 'district';
    protected $fillable = [
        'districtid','district_title','state_id'];


    public function states()
    {
        return $this->belongsTo('App\Models\stat');
    }
}
