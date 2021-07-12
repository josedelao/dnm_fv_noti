<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ExamenesClinicos extends Model
{
    //
    protected $table = 'dnm_fv_si.FV_examenesClinicos';
    protected $primaryKey = 'idExamenClinico';
	public $timestamps = false;
	protected $connection = 'mysql';
    protected $guarded = [];
}
