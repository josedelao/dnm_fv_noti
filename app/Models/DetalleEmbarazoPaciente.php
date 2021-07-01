<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DetalleEmbarazoPaciente extends Model
{
    //
    protected $table = 'dnm_fv_si.FV.detalleEmbarazoPaciente';
    protected $primaryKey = 'idEmbarazo';
	public $timestamps = false;
	protected $connection = 'mysql';
}
