<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DetalleEmbarazoPaciente extends Model
{
    //
    protected $table = 'dnm_fv_si.FV_detalleEmbarazoPaciente';
    protected $primaryKey = 'idEmbarazo';
	public $timestamps = false;
	protected $connection = 'mysql';
    protected $guarded = [];

}
