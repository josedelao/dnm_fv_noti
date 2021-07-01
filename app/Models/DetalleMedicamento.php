<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DetalleMedicamento extends Model
{
    //
    protected $table = 'dnm_fv_si.FV.detalleMedicamento';
    protected $primaryKey = 'idDetalleMedicamento';
	public $timestamps = false;
	protected $connection = 'mysql';
}
