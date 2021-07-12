<?php

namespace App\Http\Controllers;
use App\Models\PacienteEvenRep;
use Illuminate\Http\Request;

class PacienteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return PacienteEvenRep::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $paciente = PacienteEvenRep::create($request->all());
        return response()->json($paciente,201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(PacienteEvenRep $paciente)
    {
        //
        return $paciente;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, PacienteEvenRep $paciente)
    {
        //
        $paciente->update($request->all());
        return response()->json($paciente, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(PacienteEvenRep $paciente)
    {
        //
        $paciente->delete();
        return response()->json(null,204);
    }
}
