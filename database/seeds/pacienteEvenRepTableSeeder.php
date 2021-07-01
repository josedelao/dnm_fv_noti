<?php

use Illuminate\Database\Seeder;

class pacienteEvenRepTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();

        $array= [F,M];
        $emb= [S,N];
        
        // And now, let's create a few articles in our database:
        for ($i = 0; $i < 2; $i++) {
            $random= Arr::random($array);
            $emb= Arr::random($emb);
            EventoReporte::create([
                'idDetalleProporcion'=> $i+1, 
                'idPais'=> $faker->numberBetween($min = 1, $max = 80), 
                'idDepartamento' => $faker->numberBetween($min = 1, $max = 14), 
                'idMunicipio' => $faker->numberBetween($min = 1, $max = 50), 
                'inicialesPaciente' => $faker->lexify('????'), 
                'genero' => $random, 
                'fechaNacimiento' =>$faker->dateTime,
                'embarazoPaciente' =>$emb , 
                'nombrePaciente' => $faker->name, 
                'apellidoPaciente' => $faker->lastname, 
                'edadDesconocida'=> 0,
                'fechaCreacion' => $faker->dateTime, 
                'idUsuarioCrea' =>1, 
                'fechaModificacion'=> $faker->dateTime, 
                'idUsuarioModifica'=> $faker->unique()->randomDigit,
            ]);
        }
    }
}
