<?php

namespace App\Http\Controllers;
use App\Models\ExamenesClinicos;
use Illuminate\Http\Request;

class ExamenesClinicosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return ExamenesClinicos::all();
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
        $examenClinico = ExamenesClinicos::create($request->all());
        return response()->json($examenClinico,201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(ExamenesClinicos $examenClinico)
    {
        //
        return $examenClinico;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,ExamenesClinicos $examenClinico)
    {
        //
        $examenClinico->update($request->all());
        return response()->json($examenClinico,200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(ExamenesClinicos $examenClinico)
    {
        //
        $examenClinico->delete();
        return response()->json(null,204);
    }
}
