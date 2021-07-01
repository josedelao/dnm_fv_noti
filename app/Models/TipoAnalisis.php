<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TipoAnalisis extends Model
{
    //
    protected $table = 'dnm_fv_si.CAT.tipoAnalisis';
    protected $primaryKey = 'idTipoAnalisis';
	public $timestamps = false;
	protected $connection = 'mysql';
}
