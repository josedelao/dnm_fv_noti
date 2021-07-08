<?php
use App\Models\DetalleMedicamento;
use Illuminate\Database\Seeder;

class detalleMedicamentoTableSeeder extends Seeder
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
            
           DetalleMedicamento::create([
                'idProducto'=> $faker->numberBetween($min = 1, $max = 364),
                'numeroLoteRegistro'=> $faker->numberBetween($min = 1, $max = 34000), 
                'fechaExpRegistro'=> $faker->dateTime,
                'fechaCreacion' => $faker->dateTime, 
                'idUsuarioCrea' =>1, 
                'fechaModificacion'=> $faker->dateTime, 
                'idUsuarioModifica'=> $faker->unique()->randomDigit,
            ]);
        }
    }
}
