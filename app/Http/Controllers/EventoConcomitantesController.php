<?php

namespace App\Http\Controllers;
use App\Models\EventoConcomitantes;
use Illuminate\Http\Request;

class EventoConcomitantesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        EventoConcomitantes::all();
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
        $concomitante = EventoConcomitante::create($request>all());
        return response()->json($concomitante,201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(EventoConcomitantes $concomitante)
    {
        //
        return $concomitante;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,EventoConcomitantes $concomitante)
    {
        //
        $concomitante->update($request->all());
        return response()->json($concomitante,200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(EventoConcomitantes $concomitante)
    {
        //
        $concomitante->delete();
        return response()->json(null,204);
    }
}
