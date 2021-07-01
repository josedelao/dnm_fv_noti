<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TipoNotificacion extends Model
{
    //
    protected $table = 'dnm_fv_si.CAT.tipoNotificacion';
    protected $primaryKey = 'idTipoNotificacion';
	public $timestamps = false;
	protected $connection = 'mysql';
}
