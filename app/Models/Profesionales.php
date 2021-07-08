<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Profesionales extends Model
{
    //
    protected $table = 'cssp.cssp_profesionales';
    protected $primaryKey = 'ID_PROFESIONAL';
	public $timestamps = false;
    public $incrementing = false;
	protected $connection = 'mysql12';
}
