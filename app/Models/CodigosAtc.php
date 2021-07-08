<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CodigosAtc extends Model
{
    //
    protected $table = 'dnm_fv_si.CAT.codigosAtc';
    protected $primaryKey = 'idCodigoAtc';
	public $timestamps = false;
	protected $connection = 'mysql';
}
