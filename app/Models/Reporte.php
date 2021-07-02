<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Reporte extends Model
{
    //
    protected $table = 'dnm_fv_si.FV.reporte';
    protected $primaryKey = 'idReporte';
	public $timestamps = false;
	protected $connection = 'mysql';

    use HasFactory;
    public $fillable = [
        'idEstado',
        'idTipoNotificacion',
        'numeroReporte',
        'passwordReporte',
        'tituloReporte',
        'fechaReporte',
        'fechaNotificacion',
        'origenNotificacion',
        'fechaCreacion',
        'idUsuarioCrea',
        'fechaModificacion',
        'idUsuarioModifica',
    ];
}
