<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AccionTomada extends Model
{
    //
    protected $table = 'dnm_fv_si.CAT.accionTomada';
    protected $primaryKey = 'idAccion';
	public $timestamps = false;
	protected $connection = 'mysql';
	
}
