<?php
use App\Models\DetalleMuerteEvenRep;
use Illuminate\Database\Seeder;

class detalleMuerteEvenRepTableSeeder extends Seeder
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
            
           DetalleMuerteEvenRep::create([
                'fechaMuertePaciente'=> $faker->dateTime, 
                'causaMuerte'=> $faker->sentence, 
                'autopsiaPaciente' =>'S', 
                'resultadoAutopsia'=> $faker->sentence, 
                
                'fechaCreacion' => $faker->dateTime, 
                'idUsuarioCrea' =>1, 
                'fechaModificacion'=> $faker->dateTime, 
                'idUsuarioModifica'=> $faker->unique()->randomDigit,
            ]);
        }
    }
}
