<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EventoConcomitantes extends Model
{
    //
    protected $table = 'dnm_fv_si.FV.eventoConcomitantes';
    protected $primaryKey = 'idEventoConcomitantes';
	public $timestamps = false;
	protected $connection = 'mysql';
}
