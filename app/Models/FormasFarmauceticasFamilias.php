<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FormasFarmauceticasFamilias extends Model
{
    //
    protected $table = 'cssp.siic_formas_farmaceuticas_familias';
    protected $primaryKey = 'ID_FORMA_FARMACEUTICA_FAMILIA';
	public $timestamps = false;
    public $incrementing = false;
	protected $connection = 'mysql12';
}
