<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Municipios extends Model
{
    //
    protected $table = 'dnm_catalogos.cat_municipios';
    protected $primaryKey = 'idMunicipio';
	public $timestamps = false;
    public $incrementing = false;
	protected $connection = 'mysql';

    public function getDepartamento()
	{
		return $this->hasOne('App\Models\Departamentos','idDepartamento','idDepartamento')->join('dnm_catalogos.cat_paises','dnm_catalogos.cat_departamentos.idPais', '=','dnm_catalogos.cat_paises.codigoId');
	}
	public static function getList($idDepartamento)
	{
		return Municipios::where('idDepartamento','=',$idDepartamento)->pluck('nombreMunicipio','idMunicipio');
	}

}
