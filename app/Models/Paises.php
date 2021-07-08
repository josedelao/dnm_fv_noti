<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Paises extends Model
{
    //
    protected $table = 'dnm_catalogos.cat_paises';
    protected $primaryKey = 'idPais';
	public $timestamps = false;
    public $incrementing = false;
	protected $connection = 'mysql';
}

