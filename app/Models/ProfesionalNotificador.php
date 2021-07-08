<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProfesionalNotificador extends Model
{
    //
    protected $table = 'dnm_fv_si.FV_profesionalNotificador';
    protected $primaryKey = 'idProfesionalEvenRep';
	public $timestamps = false;
	protected $connection = 'mysql';
}
