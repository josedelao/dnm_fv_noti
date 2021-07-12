<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ReaccionEventoReporte extends Model
{
    //
    protected $table = 'dnm_fv_si.FV_reaccionEventoReporte';
    protected $primaryKey = 'idReaccionEvenReo';
	public $timestamps = false;
	protected $connection = 'mysql';
    protected $guarded = [];

}
