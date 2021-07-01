<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EstadoReporte extends Model
{
    //
    protected $table = 'dnm_fv_si.CAT.estadoReporte';
    protected $primaryKey = 'idEstado';
	public $timestamps = false;
	protected $connection = 'mysql';
}
