<?php

namespace App\Http\Controllers;
use App\Models\EventoReporte;
use Illuminate\Http\Request;

class EventoReporteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return EventoReporte::all();
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
        $eventoReporte = EventoReporte::create($request->all());
        return response()->json($eventoReporte,201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(EventoReporte $evento)
    {
        //
        return $evento;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, EventoReporte $evento)
    {
        //
        $evento->update($request->all());

        return response()->json($evento,200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(EventoReporte $evento)
    {
        //
        $evento->delete();

        return response()->json(null,204);
    }
}
