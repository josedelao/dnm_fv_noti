<?php

namespace App\Http\Controllers;
use App\Models\MedicamentoEventoReporte;
use Illuminate\Http\Request;

class MedicamentoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return MedicamentoEventoReporte::all();
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
        $medicamento= MedicamentoEventoReporte::create($request->all());
        return response()->json($medicamento,201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(MedicamentoEventoReporte $medicamento)
    {
        //
        return $medicamento;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, MedicamentoEventoReporte $medicamento)
    {
        //
        $medicamento->update($request->all());
        return response($medicamento, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(MedicamentoEventoReporte $medicamento)
    {
        //
        $medicamento->delete();
        return response(null, 204);
    }
}
