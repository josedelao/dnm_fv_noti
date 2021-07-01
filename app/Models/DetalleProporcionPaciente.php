<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DetalleProporcionPaciente extends Model
{
    //
    protected $table = 'dnm_fv_si.FV.detalleProporcionPaciente';
    protected $primaryKey = 'idDetalleProporcion';
	public $timestamps = false;
	protected $connection = 'mysql';
}
