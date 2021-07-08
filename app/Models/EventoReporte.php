<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EventoReporte extends Model
{
    //
    protected $table = 'dnm_fv_si.FV_eventoReporte';
    protected $primaryKey = 'idEventoReporte';
	public $timestamps = false;
	protected $connection = 'mysql';
}
