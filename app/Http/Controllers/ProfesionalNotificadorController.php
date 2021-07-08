<?php

namespace App\Http\Controllers;
use App\Models\ProfesionalNotificador;
use Illuminate\Http\Request;

class ProfesionalNotificadorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return ProfesionalNotificador::all();
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
        $profesional= ProfesionalNotificador::create($request->all());
        return response()->json($profesional,201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(ProfesionalNotificador $profesional)
    {
        //
        return $profesional;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,ProfesionalNotificador $profesional)
    {
        //
        $profesional->update($request->all());
        return response()->json($profesional,200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(ProfesionalNotificador $profesional)
    {
        //
        $profesional->delete();
        return response()->json(null,204);
    }
}
