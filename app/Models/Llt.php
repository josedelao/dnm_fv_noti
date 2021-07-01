<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Llt extends Model
{
    //
    protected $table = 'dnm_fv_si.MDRA_llt';
    protected $primaryKey = 'lltCode';
	public $timestamps = false;
	protected $connection = 'mysql';
}
