<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class HistoriaClinicaEvento extends Model
{
    //
    protected $table = 'dnm_fv_si.FV.historiaClinicaEvento';
    protected $primaryKey = 'idHistoriaClinicaEvento';
	public $timestamps = false;
	protected $connection = 'mysql';
}
