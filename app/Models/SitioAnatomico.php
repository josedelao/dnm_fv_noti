<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SitioAnatomico extends Model
{
    //
    protected $table = 'dnm_fv_si.CAT.sitioAnatomico';
    protected $primaryKey = 'idSitioAdmon';
	public $timestamps = false;
	protected $connection = 'mysql';
}
