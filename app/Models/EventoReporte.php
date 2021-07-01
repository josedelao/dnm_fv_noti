<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EventoReporte extends Model
{
    //
    protected $table = 'dnm_fv_si.FV.eventoReporte';
    protected $primaryKey = 'idEventoReporte';
	public $timestamps = false;
	protected $connection = 'mysql';
}
