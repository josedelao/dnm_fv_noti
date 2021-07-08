<?php
use App\Models\ExamenesClinicos;
use Illuminate\Database\Seeder;

class examenesClinicosTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();

        
        
        // And now, let's create a few articles in our database:
        for ($i = 0; $i < 3; $i++) {
            
           ExamenesClinicos::create([
                'idTipoAnalisis'=>$faker->numberBetween($min = 1, $max = 10), 
                'idHistoriaClinicaEvento'=>$i+1, 
                'fechaMuestra'=> $faker->dateTime, 
                'fechaResultados'=> $faker->dateTime, 
                'resultado'=> $faker->sentence,
                'fechaCreacion' => $faker->dateTime, 
                'idUsuarioCrea' =>1, 
                'fechaModificacion'=> $faker->dateTime, 
                'idUsuarioModifica'=> $faker->unique()->randomDigit,
            ]);
        }
    }
}
