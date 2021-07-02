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

        $array= [1,2,3,5,7];
        
        // And now, let's create a few articles in our database:
        for ($i = 0; $i < 2; $i++) {
            $random= Arr::random($array);
            ReaccionEventoReporte::create([
                'idEventoReporte'=> $i+1,   
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
