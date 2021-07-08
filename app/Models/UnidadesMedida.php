<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UnidadesMedida extends Model
{
    //
    protected $table = 'cssp.cssp_unidades_medida';
    protected $primaryKey = 'ID_UNIDAD_MEDIDA';
	public $timestamps = false;
    public $incrementing = false;
	protected $connection = 'mysql12';
}
