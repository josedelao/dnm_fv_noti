<?php
use App\Models\ReaccionEventoReporte;
use Illuminate\Database\Seeder;

class reaccionEventoReporteTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $faker = \Faker\Factory::create();

        $arrayE= [2,3,4,5,6,7];
        $array= [1,2,3,4,5,6];
        $arrayM= ['null',1,2];
      
        // And now, let's create a few articles in our database:
        for ($i = 0; $i < 6; $i++) {
            $randomE= Arr::random($arrayE);
            $random= Arr::random($array);
            $randomM= Arr::random($arrayM);
            ReaccionEventoReporte::create([
                'idEventoReporte'=> $randomE,
                'idCondicion'=>$random,
                'idPacienteEvenRep'=>$random,
                'idHistoriaClinicaEvento'=>$random,
                'idMedicamentoEvenRep'=>$random,
                'fechaDeteccion' => $faker->datetime, 
                'fechaIngresoDeteccion' => $faker->datetime, 
                'fechaInicioReaccion' => $faker->datetime,  
                'fechaResolucionEvento'=> $faker->dateTime, 
                'fechaCreacion' => $faker->dateTime, 
                'idUsuarioCrea' =>1, 
                'fechaModificacion'=> $faker->dateTime, 
                'idUsuarioModifica'=> $faker->unique()->randomDigit,
            ]);
        }
    }
}
