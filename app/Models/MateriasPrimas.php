<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MateriasPrimas extends Model
{
    //
    protected $table = 'cssp.cssp_materias_primas';
    protected $primaryKey = 'ID_MATERIA_PRIMA';
	public $timestamps = false;
    public $incrementing = false;
	protected $connection = 'mysql12';
}
