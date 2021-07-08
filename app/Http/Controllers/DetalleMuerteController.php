<?php

namespace App\Http\Controllers;
use App\Models\DetalleMuerteEvenRep;
use Illuminate\Http\Request;

class DetalleMuerteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return DetalleMuerteEvenRep::all();
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
        $dMuerte = DetalleMuerteEvenRep::create($request->all());
        return response()->json($dMuerte,201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(DetalleMuerteEvenRep $dMuerte)
    {
        //
        return $dMuerte;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, DetalleMuerteEvenRep $dMuerte)
    {
        //
        $dMuerte=update($request->all());
        return response()->json($dMuerte,200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(DetalleMuerteEvenRep $dMuerte)
    {
        //
        $dMuerte->delete();
        return response()->json(null,204);
    }
}
