<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
class rejestration extends Model
{
    use HasFactory;
    use Notifiable;
    public $table = 'rejester';
    protected $fillable = [
        'id','fname','lname','email','password','stat','dist','message','phoneno','code','remember_token'];
}
