<?php
use App\Http\Controllers\ReporteController;
use App\Http\Controllers\EventoReporteController;
use App\Http\Controllers\ProfesionalNotificadorController;
use App\Http\Controllers\ExamenesClinicosController;
use App\Http\Controllers\EventoConcomitantesController;
use App\Http\Controllers\DetalleEmbarazoPacienteController;
use App\Http\Controllers\DetalleMedicamentoController;
use App\Http\Controllers\DetalleProporcionPacienteController;
use App\Http\Controllers\DetalleVacunaMedicamentoController;
use App\Http\Controllers\DetalleMuerteController;
use App\Http\Controllers\HistoriaClinicaController;
use App\Http\Controllers\MedicamentoController;
use App\Http\Controllers\PacienteController;
use App\Http\Controllers\ReaccionEventoController;
use App\Http\Controllers\CiudadanoNotificadorController;

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
/*-----------Reporte----------------------------------------------------*/
Route::get('reportes', [ReporteController::class,'index']);
Route::get('reportes/{reporte}', 'ReporteController@show');
Route::post('reportes', 'ReporteController@store');
Route::put('reportes/{reporte}', 'ReporteController@update');
Route::delete('reportes/{reporte}', 'ReporteController@destroy');

/*-----------Evento Reporte---------------------------------------------*/
Route::get('eventos', [EventoReporteController::class,'index']);
Route::get('eventos/{evento}', 'EventoReporteController@show');
Route::post('eventos', 'EventoReporteController@store');
Route::put('eventos/{evento}', 'EventoReporteController@update');
Route::delete('eventos/{evento}', 'EventoReporteController@destroy');

/*-----------Reaccion Evento Reporte------------------------------------*/
Route::get('reacciones', [ReaccionEventoController::class,'index']);
Route::get('reacciones/{reaccion}', 'ReaccionEventoController@show');
Route::post('reacciones', 'ReaccionEventoController@store');
Route::put('reacciones/{reaccion}', 'ReaccionEventoController@update');
Route::delete('reacciones/{reaccion}', 'ReaccionEventoController@destroy');

/*-----------Profesional Notificador------------------------------------*/
Route::get('profesionalNotificadores', [ProfesionalNotificadorController::class,'index']);
Route::get('profesionalNotificadores/{profesional}', 'ProfesionalNotificadorController@show');
Route::post('profesionalNotificadores', 'ProfesionalNotificadorController@store');
Route::put('profesionalNotificadores/{profesional}', 'ProfesionalNotificadorController@update');
Route::delete('profesionalNotificadores/{profesional}', 'ProfesionalNotificadorController@destroy');

/*-----------Paciente---------------------------------------------------*/
Route::get('pacientes', [PacienteController::class,'index']);
Route::get('pacientes/{paciente}', 'PacienteController@show');
Route::post('pacientes', 'PacienteController@store');
Route::put('pacientes/{paciente}', 'PacienteController@update');
Route::delete('pacientes/{paciente}', 'PacienteController@destroy');

/*-----------Historia Clinica--------------------------------------------*/
Route::get('historiasClinicas', [HistoriaClinicaController::class,'index']);
Route::get('historiasClinicas/{historiaClinica}', 'HistoriaClinicaController@show');
Route::post('historiasClinicas', 'HistoriaClinicaController@store');
Route::put('historiasClinicas/{historiaClinica}', 'HistoriaClinicaController@update');
Route::delete('historiasClinicas/{historiaClinica}', 'HistoriaClinicaController@destroy');

/*-----------Medicamento-------------------------------------------------*/
Route::get('medicamentos', [MedicamentoController::class,'index']);
Route::get('medicamentos/{medicamento}', 'MedicamentoController@show');
Route::post('medicamentos', 'MedicamentoController@store');
Route::put('medicamentos/{medicamento}', 'MedicamentoController@update');
Route::delete('medicamentos/{medicamento}', 'MedicamentoController@destroy');

/*-----------Detalle Medicamento-----------------------------------------*/
Route::get('detalleMedicamentos', [DetalleMedicamentoController::class,'index']);
Route::get('detalleMedicamentos/{dMedicamento}', 'DetalleMedicamentoController@show');
Route::post('detalleMedicamentos', 'DetalleMedicamentoController@store');
Route::put('detalleMedicamentos/{dMedicamento}', 'DetalleMedicamentoController@update');
Route::delete('detalleMedicamentos/{dMedicamento}', 'DetalleMedicamentoController@destroy');

/*-----------Detalle Proporcion Paciente---------------------------------*/
Route::get('detalleProporcionesPaciente', [DetalleProporcionPacienteController::class,'index']);
Route::get('detalleProporcionesPaciente/{dProporcion}', 'DetalleProporcionPacienteController@show');
Route::post('detalleProporcionesPaciente', 'DetalleProporcionPacienteController@store');
Route::put('detalleProporcionesPaciente/{dProporcion}', 'DetalleProporcionPacienteController@update');
Route::delete('detalleProporcionesPaciente/{dProporcion}', 'DetalleProporcionPacienteController@destroy');

/*-----------Detalle Embarazo Paciente------------------ ---------------*/
Route::get('detalleEmbarazos', [DetalleEmbarazoPacienteController::class,'index']);
Route::get('detalleEmbarazos/{dEmbarazo}', 'DetalleEmbarazoPacienteController@show');
Route::post('detalleEmbarazos', 'DetalleEmbarazoPacienteController@store');
Route::put('detalleEmbarazos/{dEmbarazo}', 'DetalleEmbarazoPacienteController@update');
Route::delete('detalleEmbarazos/{dEmbarazo}', 'DetalleEmbarazoPacienteController@destroy');

/*-----------Detalle Muerte---------------------------------------------*/
Route::get('detalleMuertes', [DetalleMuerteController::class,'index']);
Route::get('detalleMuertes/{dMuerte}', 'DetalleMuerteController@show');
Route::post('detalleMuertes', 'DetalleMuerteController@store');
Route::put('detalleMuertes/{dMuerte}', 'DetalleMuerteController@update');
Route::delete('detalleMuertes/{dMuerte}', 'DetalleMuerteController@destroy');

/*-----------Detalle Vacuna Medicamento--------------------------------*/
Route::get('vacunaMedicamentos', [DetalleVacunaMedicamentoController::class,'index']);
Route::get('vacunaMedicamentos/{vacunaMedicamento}', 'DetalleVacunaMedicamentoController@show');
Route::post('vacunaMedicamentos', 'DetalleVacunaMedicamentoController@store');
Route::put('vacunaMedicamentos/{vacunaMedicamento}', 'DetalleVacunaMedicamentoController@update');
Route::delete('vacunaMedicamentos/{vacunaMedicamento}', 'DetalleVacunaMedicamentoController@destroy');

/*-----------Evento Concominantes---------------------------------------*/
Route::get('concomitantes', [EventoConcomitantesController::class,'index']);
Route::get('concomitantes/{concomitante}', 'EventoConcomitantesController@show');
Route::post('concomitantes', 'EventoConcomitantesController@store');
Route::put('concomitantes/{concomitante}', 'EventoConcomitantesController@update');
Route::delete('concomitantes/{concomitante}', 'EventoConcomitantesController@destroy');

/*-----------Examenes Clinicos-------------------------------------------*/
Route::get('examenesClinicos', [ExamenesClinicosController::class,'index']);
Route::get('examenesClinicos/{examenClinico}', 'ExamenesClinicosController@show');
Route::post('examenesClinicos', 'ExamenesClinicosController@store');
Route::put('examenesClinicos/{examenClinico}', 'ExamenesClinicosController@update');
Route::delete('examenesClinicos/{examenClinico}', 'ExamenesClinicosController@destroy');

/*-----------Ciudadano Notificador----------------------------------------*/
Route::get('ciudadanos', [CiudadanoNotificadorController::class,'index']);
Route::get('ciudadanos/{ciudadano}', 'CiudadanoNotificadorController@show');
Route::post('ciudadanos', 'CiudadanoNotificadorController@store');
Route::put('ciudadanos/{ciudadano}', 'CiudadanoNotificadorController@update');
Route::delete('ciudadanos/{ciudadano}', 'CiudadanoNotificadorController@destroy');