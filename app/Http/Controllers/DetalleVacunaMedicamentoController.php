<?php

namespace App\Http\Controllers;
use App\Models\DetalleVacunaMedicamento;
use Illuminate\Http\Request;

class DetalleVacunaMedicamentoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return DetalleVacunaMedicamento::all();
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
        $vacunaMedicamento= DetalleVacunaMedicamento::create($request->all());
        return response()->json($vacunaMedicamento,201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(DetalleVacunaMedicamento $vacunaMedicamento)
    {
        //
        return $vacunaMedicamento;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, DetalleVacunaMedicamento $vacunaMedicamento)
    {
        //
        $vacunaMedicamento->update($request->all());
        return response()->json($vacunaMedicamento,200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(DetalleVacunaMedicamento $vacunaMedicamento)
    {
        //
        $vacunaMedicamento->delete();
        return response()->json(null,204);
    }
}
