<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MarcoAppVacuna extends Model
{
    //
    protected $table = 'dnm_fv_si.CAT.marcoAppVacuna';
    protected $primaryKey = 'idMarcoApp';
	public $timestamps = false;
	protected $connection = 'mysql';
}
