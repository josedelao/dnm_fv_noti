<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NumeroDosis extends Model
{
    //
    protected $table = 'dnm_fv_si.CAT.numeroDosis';
    protected $primaryKey = 'idNumeroDosis';
	public $timestamps = false;
	protected $connection = 'mysql';
}
