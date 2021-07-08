<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Reporte extends Model
{
    //
    protected $table = 'dnm_fv_si.FV_reporte';
    protected $primaryKey = 'idReporte';
	public $timestamps = false;
	protected $connection = 'mysql';
    protected $guarded = [];
}
