<?php
use App\Models\CiudadanoNotificador;
use Illuminate\Database\Seeder;

class ciudadanoNotificadorTableSeeder extends Seeder
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

        $even=[3,5,7];
        
        // And now, let's create a few articles in our database:
        for ($i = 0; $i < 3; $i++) {
            $randomE= Arr::random($even);
            
            CiudadanoNotificador::create([
                'idEventoReporte'=> $randomE, 
                'nombre' => $faker->name , 
                'telefono' => $faker->numerify('########') , 
                'email' => $faker->dateTime, 
                'idUsuarioCrea' =>1, 
                'fechaModificacion'=> $faker->dateTime, 
                'idUsuarioModifica'=> $faker->unique()->randomDigit,
            ]);
        }
    }
}
