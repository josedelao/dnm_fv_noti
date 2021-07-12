<?php

namespace App\Http\Controllers;
use App\Models\CiudadanoNotificador;
use Illuminate\Http\Request;

class CiudadanoNotificadorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // 
        return CiudadanoNotificador::all();
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
        $ciudadano= CiudadanoNotificador::create($request->all());
        return response()->json($ciudadano, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(CiudadanoNotificador $ciudadano)
    {
        //
        return response()->json([
            'res' => true,
            'ciudadano' => $ciudadano
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, CiudadanoNotificador $ciudadano)
    {
        //
        $ciudadano->update($request->all());
        return response()->json($ciudadano,200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(CiudadanoNotificador $ciudadano)
    {
        //
        $ciudadano->delete();
        return response()->json(null,204);
    }
}
