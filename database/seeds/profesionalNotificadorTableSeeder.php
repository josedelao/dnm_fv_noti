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
        $tipo= [1,2,4,5,];
        $even=[1,3,5];
        
        // And now, let's create a few articles in our database:
        for ($i = 0; $i < 3; $i++) {
            $random= Arr::random($array);
            $randomT= Arr::random($tipo);
            $randomE= Arr::random($even);
            
            ProfesionalNotificador::create([
                'idNotificador'=> $randomT,
                'idEfectora'=> $random,
                'idInstitucion'=> $faker->numberBetween($min = 1, $max = 325), 
                'idEventoReporte'=> $randomE, 
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
