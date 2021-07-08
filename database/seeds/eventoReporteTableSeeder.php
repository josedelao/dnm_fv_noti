<?php
use App\Models\EventoReporte;
use Illuminate\Database\Seeder;
use Illuminate\Support\Arr;

class eventoReporteTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();

        $array= [1,2,3,5,7];
        
        // And now, let's create a few articles in our database:
        for ($i = 0; $i < 2; $i++) {
            $random= Arr::random($array);
            EventoReporte::create([
                'eventoSerio' => 'S', 
                'idSeriedad'=> $faker->numberBetween($min = 1, $max = 6), 
                'idEvento' => $random, 
                'idReporte' => $i, 
                'fechaCreacion' => $faker->dateTime, 
                'idUsuarioCrea' =>1, 
                'fechaModificacion'=> $faker->dateTime, 
                'idUsuarioModifica'=> $faker->unique()->randomDigit,
            ]);
        }
    }
}
