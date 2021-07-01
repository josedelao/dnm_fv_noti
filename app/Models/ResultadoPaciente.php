<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ResultadoPaciente extends Model
{
    //
    protected $table = 'dnm_fv_si.CAT.resultadoPaciente';
    protected $primaryKey = 'idCondicion';
	public $timestamps = false;
	protected $connection = 'mysql';
}
