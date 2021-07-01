<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PacienteEvenRep extends Model
{
    //
    protected $table = 'dnm_fv_si.FV_pacienteEvenRep';
    protected $primaryKey = 'idPacienteEvenRep';
	public $timestamps = false;
	protected $connection = 'mysql';
}
