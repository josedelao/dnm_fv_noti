<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MedicamentoEventoReporte extends Model
{
    //
    protected $table = 'dnm_fv_si.FV_medicamentoEventoReporte';
    protected $primaryKey = 'idMedicamentoEvenRep';
	public $timestamps = false;
	protected $connection = 'mysql';
}
