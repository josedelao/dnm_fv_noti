<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TipoEvento extends Model
{
    //
    protected $table = 'dnm_fv_si.CAT.tipoEvento';
    protected $primaryKey = 'idEvento';
	public $timestamps = false;
	protected $connection = 'mysql';
}
