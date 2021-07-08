<?php
use App\Models\MedicamentoEventoReporte;
use Illuminate\Database\Seeder;

class medicamentoEventoReporteTableSeeder extends Seeder
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

        $array= [S,N];
        
        // And now, let's create a few articles in our database:
        for ($i = 0; $i < 2; $i++) {
            $random= Arr::random($array);
            MedicamentoEventoReporte::create([
                'idDetalleMedicamento' => $i+1, 
                'indicacionesMedicamento'=> $faker->sentence, 
                'idMateriaPrima' => $faker->numberBetween($min = 1, $max = 400), 
                'concentracionPA'=> $faker->randomFloat($nbMaxDecimals = NULL, $min = 0, $max = NULL), 
                'idUnidadMedida' => $faker->numberBetween($min = 1, $max = 15), 
                'regimenDosificacion'=> $faker->sentence, 
                'idViaAdmon' => $faker->numberBetween($min = 1, $max = 10), 
                'fechaInicioAdmon' => $faker->datetime, 
                'fechaFinAdmon' => $faker->datetime, 
                'esVacuna'=> $random,   
                'fechaCreacion' => $faker->dateTime, 
                'idUsuarioCrea' =>1, 
                'fechaModificacion'=> $faker->dateTime, 
                'idUsuarioModifica'=> $faker->unique()->randomDigit,
            ]);
        }
    }
}
