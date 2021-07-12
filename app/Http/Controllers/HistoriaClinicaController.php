<?php

namespace App\Http\Controllers;
use App\Models\HistoriaClinicaEvento;
use Illuminate\Http\Request;

class HistoriaClinicaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return HistoriaClinicaEvento::all();
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
        $historiaClinica = HistoriaClinicaEvento::create($request->all());
        return response()->json($historiaClinica,201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(HistoriaClinicaEvento $historiaClinica)
    {
        //
        return $historiaClinica;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, HistoriaClinicaEvento $historiaClinica)
    {
        //
        $historiaClinica->update($request->all());
        return response()->json($historiaClinica,200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(HistoriaClinicaEvento $historiaClinica)
    {
        //
        $historiaClinica->delete();
        return response()->json(null,204);
    }
}
