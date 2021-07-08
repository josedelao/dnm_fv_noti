<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DetalleMuerteEvenRep extends Model
{
    //
    protected $table = 'dnm_fv_si.FV_detalleMuerteEvenRep';
    protected $primaryKey = 'idDetalleMuerteEvenRep';
	public $timestamps = false;
	protected $connection = 'mysql';
}
