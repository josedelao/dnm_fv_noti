<?php
use App\Models\HistoriaClinicaEvento;
use Illuminate\Database\Seeder;

class historiaTableSeeder extends Seeder
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
        for ($i = 0; $i < 2; $i++) {
            
            HistoriaClinicaEvento::create([
                'idAccion'=> $faker->numberBetween($min = 1, $max = 8), 
                'numeroExpediente'=> $faker->numberBetween($min = 1, $max = 325), 
                'diagnosticoClinico'=> $faker->sentence, 
                'descripcionCuadro'=> $faker->sentence, 
                'antecedentesMedicos'=> $faker->sentence, 
                'fechaAltaPaciente'=> $faker->dateTime,
                'fechaCreacion' => $faker->dateTime, 
                'idUsuarioCrea' =>1, 
                'fechaModificacion'=> $faker->dateTime, 
                'idUsuarioModifica'=> $faker->unique()->randomDigit,
            ]);
        }
    }
}
