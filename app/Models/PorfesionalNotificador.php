<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PorfesionalNotificador extends Model
{
    //
    protected $table = 'dnm_fv_si.FV.profesionalNotificador';
    protected $primaryKey = 'idProfesionalEvenRep';
	public $timestamps = false;
	protected $connection = 'mysql';
}
