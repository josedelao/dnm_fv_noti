<?php
use App\Models\ProfesionalNotificador;
use Illuminate\Database\Seeder;
use Illuminate\Support\Arr;

class profesionalNotificadorTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();

        $array= [1,2,3,4,5,6,7,8,9,10,11,13,15,16];
        
        // And now, let's create a few articles in our database:
        for ($i = 0; $i < 2; $i++) {
            $random= Arr::random($array);
            ProfesionalNotificador::create([
                'idNotificador'=> $faker->numberBetween($min = 1, $max = 6),
                'idEfectora'=> $random,
                'idInstitucion'=> $faker->numberBetween($min = 1, $max = 325), 
                'idEventoReporte'=> $i+1, 
                'idProfesional' => $faker->numerify('#####') , 
                'idReferente' => $faker->numerify('#####') , 
                'fechaCreacion' => $faker->dateTime, 
                'idUsuarioCrea' =>1, 
                'fechaModificacion'=> $faker->dateTime, 
                'idUsuarioModifica'=> $faker->unique()->randomDigit,
            ]);
        }
    }
}
