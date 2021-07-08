<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Departamentos extends Model
{
    //
    protected $table = 'dnm_catalogos.cat_departamentos';
    protected $primaryKey = 'idDepartamento';
	public $timestamps = false;
    public $incrementing = false;
	protected $connection = 'mysql';

    public static function getList($listaPais){
		return Departamentos::where('idPais','=',$listaPais)->pluck('nombreDepartamento','idDepartamento');
	}
}
