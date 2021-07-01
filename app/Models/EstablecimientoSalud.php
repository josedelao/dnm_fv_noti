<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EstablecimientoSalud extends Model
{
    //
    protected $table = 'dnm_fv_si.CAT.establecimientosSalud';
    protected $primaryKey = 'idInstitucion';
	public $timestamps = false;
	protected $connection = 'mysql';
}
