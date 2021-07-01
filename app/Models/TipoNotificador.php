<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TipoNotificador extends Model
{
    //
    protected $table = 'dnm_fv_si.CAT.tipoNotificador';
    protected $primaryKey = 'idNotificador';
	public $timestamps = false;
	protected $connection = 'mysql';
}
