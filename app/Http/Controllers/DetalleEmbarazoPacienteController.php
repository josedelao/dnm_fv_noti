<?php

namespace App\Http\Controllers;
use App\Models\DetalleEmbarazoPaciente;
use Illuminate\Http\Request;

class DetalleEmbarazoPacienteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return DetalleEmbarazoPaciente::all();
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
        $dEmbarazo= DetalleEmbarazoPaciente::create($request->all());
        return response()->json($dEmbarazo,201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(DetalleEmbarazoPaciente $dEmbarazo)
    {
        //
        return $dEmbarazo;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,DetalleEmbarazoPaciente $dEmbarazo)
    {
        //
        $dEmbarazo->update($request->all());
        return response()->json($dEmbarazo,200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(DetalleEmbarazoPaciente $dEmbarazo)
    {
        //
        $dEmbarazo->delete();
        return response()->json(null,204);
    }
}
