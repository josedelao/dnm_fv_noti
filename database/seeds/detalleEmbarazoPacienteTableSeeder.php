<?php
use App\Models\DetalleEmbarazoPaciente;
use Illuminate\Database\Seeder;

class detalleEmbarazoPacienteTableSeeder extends Seeder
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
            
           DetalleEmbarazoPaciente::create([
                'idPacienteEvenRep'=>$i+1,
                'gestacionalMeses'=> $faker->numberBetween($min = 1, $max = 12), 
                'gestacioanlSemanas'=> $faker->numberBetween($min = 1, $max = 45), 
                'gestacionalDias'=> $faker->numberBetween($min = 1, $max = 364), 
                'gestacionalTrimestre'=> $faker->numberBetween($min = 1, $max = 4), 
                'detallesEmbarazo' => $faker->sentence, 
                'fechaCreacion' => $faker->dateTime, 
                'idUsuarioCrea' =>1, 
                'fechaModificacion'=> $faker->dateTime, 
                'idUsuarioModifica'=> $faker->unique()->randomDigit,
            ]);
        }
    }
}
