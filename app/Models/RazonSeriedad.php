<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RazonSeriedad extends Model
{
    //
    protected $table = 'dnm_fv_si.CAT.razonSeriedad';
    protected $primaryKey = 'idSeriedad';
	public $timestamps = false;
	protected $connection = 'mysql';
}
