<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ViasAdministracion extends Model
{
    //
    protected $table = 'cssp.siic_vias_administracion';
    protected $primaryKey = 'ID_VIA_ADMINISTRACION';
	public $timestamps = false;
    public $incrementing = false;
	protected $connection = 'mysql12';
}
