<?php
use App\Models\DetalleVacunaMedicamento;
use Illuminate\Database\Seeder;

class detalleVacunaMedicamentoTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();

        $array= [1,2,3,4,5,6,13,14];
        
        // And now, let's create a few articles in our database:
        for ($i = 0; $i < 2; $i++) {
            $random= Arr::random($array);
           DetalleVacunaMedicamento::create([
                'idMedicamentoEvenRep'=> $i+1, 
                'idSitioAdmon'=>$faker->numberBetween($min = 1, $max = 11), 
                'idMarcoApp'=>$faker->numberBetween($min = 1, $max = 5), 
                'idNumeroDosis'=>$random, 
                'idInstitucion'=>$faker->numberBetween($min = 1, $max = 325), 
                'dosisVacuna'=> $faker->sentence, 
                'temperaturaVacuna'=> $faker->bothify('##.#C'), 
                'fechaCreacion' => $faker->dateTime, 
                'idUsuarioCrea' =>1, 
                'fechaModificacion'=> $faker->dateTime, 
                'idUsuarioModifica'=> $faker->unique()->randomDigit,
            ]);
        }
    }
}
