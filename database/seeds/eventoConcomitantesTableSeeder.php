<?php
use App\Models\EventoConcomitantes;
use Illuminate\Database\Seeder;

class eventoConcomitantesTableSeeder extends Seeder
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
        for ($i = 0; $i < 3; $i++) {
            
           EventoConcomitantes::create([
                'idReaccionEvenReo'=>$i+3, 
                'idPrincioActivo'=>$faker->numberBetween($min = 1, $max = 150), 
                'dosis' => $faker->sentence, 
                'presentacion'=> $faker->sentence, 
                'lote' => $faker->sentence, 
                'viaAdministracion' => $faker->sentence, 
                'sitioAnatomico' => $faker->sentence, 
                'fechaVencimiento'=> $faker->dateTime, 
                'temperatura' => $faker->bothify('##.#C'), 
                'laboratorioProductor' => $faker->sentence, 
                'fechaCreacion' => $faker->dateTime, 
                'idUsuarioCrea' =>1, 
                'fechaModificacion'=> $faker->dateTime, 
                'idUsuarioModifica'=> $faker->unique()->randomDigit,
            ]);
        }
    }
}
