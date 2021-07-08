<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UnidadEfectora extends Model
{
    //
    protected $table = 'dnm_fv_si.CAT.unidadEfectora';
    protected $primaryKey = 'idEfectora';
	public $timestamps = false;
	protected $connection = 'mysql';
}
