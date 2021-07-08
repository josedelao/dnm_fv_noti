<?php

namespace App\Http\Controllers;
use App\Models\DetalleProporcionPaciente;
use Illuminate\Http\Request;

class DetalleProporcionPacienteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return DetalleProporcionPaciente::all();
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
        $dProporcion= DetalleProporcionPaciente::create($request->all());
        return response()->json($dProporcion,201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(DetalleProporcionPaciente $dProporcion)
    {
        //
        return $dProporcion;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, DetalleProporcionPaciente $dProporcion)
    {
        //
        $dProporcion->update($request->all());
        return response()->json($dProporcion,200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(DetalleProporcionPaciente $dProporcion)
    {
        //
        $dProporcion->delete();
        return response()->json(null,204);
    }
}
