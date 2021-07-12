<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DetalleVacunaMedicamento extends Model
{
    //
    protected $table = 'dnm_fv_si.FV_detallevacunaMedicamento';
    protected $primaryKey = 'idDetalleVacuna';
	public $timestamps = false;
	protected $connection = 'mysql';
    protected $guarded = [];

}
