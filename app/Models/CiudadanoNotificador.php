<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CiudadanoNotificador extends Model
{
    //
    protected $table = 'dnm_fv_si.FV_ciudadanoNotificador';
    protected $primaryKey = 'idCiudadanoEvenRep';
	public $timestamps = false;
	protected $connection = 'mysql';
    protected $guarded = [];

}
