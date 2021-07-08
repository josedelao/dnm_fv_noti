<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Productos extends Model
{
    //
    protected $table = 'cssp.cssp_productos';
    protected $primaryKey = 'ID_PRODUCTO';
	public $timestamps = false;
    public $incrementing = false;
	protected $connection = 'mysql12';
}
