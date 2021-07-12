<?php

namespace App\Http\Controllers;
use App\Models\ReaccionEventoReporte;
use Illuminate\Http\Request;

class ReaccionEventoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return ReaccionEventoReporte::all();
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
        $reaccion = ReaccionEventoReporte::create($request->all());
        return response()->json($reaccion,201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(ReaccionEventoReporte $reaccion)
    {
        //
        return $reaccion;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ReaccionEventoReporte $reaccion)
    {
        //
        $reaccion->update($request->all());
        return response()->json($reaccion, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(ReaccionEventoReporte $reaccion)
    {
        //
        $reaccion->delete();
        return response()->json(null,204);
    }
}
