<?php
use App\Models\DetalleProporcionPaciente;
use Illuminate\Database\Seeder;

class detalleProporcionPacienteTableSeeder extends Seeder
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
        for ($i = 0; $i < 6; $i++) {
            
           DetalleProporcionPaciente::create([
                'edadAnios' =>$faker->numberBetween($min = 1, $max = 150), 
                'edadMeses' =>$faker->numberBetween($min = 1, $max = 11), 
                'edadSemanas'=>$faker->numberBetween($min = 1, $max = 45), 
                'edadDias' =>$faker->numberBetween($min = 1, $max = 354), 
                'edadHoras'=>$faker->numberBetween($min = 1, $max = 23), 
                'edadMinutos'=>$faker->numberBetween($min = 1, $max = 60), 
                'peso' =>$faker->randomFloat($nbMaxDecimals = NULL, $min = 0, $max = NULL), 
                'altura'=>$faker->randomFloat($nbMaxDecimals = NULL, $min = 0, $max = NULL), 
                'pesoNacimiento'=>$faker->randomFloat($nbMaxDecimals = NULL, $min = 0, $max = NULL),
                'fechaCreacion' => $faker->dateTime, 
                'idUsuarioCrea' =>1, 
                'fechaModificacion'=> $faker->dateTime, 
                'idUsuarioModifica'=> $faker->unique()->randomDigit,
            ]);
        }
    }
}
