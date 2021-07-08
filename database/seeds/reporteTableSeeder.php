<?php
use App\Models\Reporte;
use App\Models\EventoReport;
use Illuminate\Database\Seeder;

class reporteTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        // Let's truncate our existing records to start from scratch.
        //Reporte::truncate();
        $array= [1,2,4,5,];
        $faker = \Faker\Factory::create();

        // And now, let's create a few articles in our database:
        for ($i = 0; $i < 3; $i++) {
            $random= Arr::random($array);
            Reporte::create([
                'idEstado' => 1,
                'idTipoNotificacion' => $random,
                'numeroReporte' => $faker->bothify('?###??##'),
                'passwordReporte' => $faker->bothify('?###??##'),
                'tituloReporte' => $faker->sentence,
                'fechaReporte' => $faker->dateTime,
                'fechaNotificacion' => $faker->dateTime,
                'origenNotificacion' => $faker->numberBetween($min = 1, $max = 2),
                'fechaCreacion' => $faker->dateTime,
                'idUsuarioCrea' => 1,
                'fechaModificacion' => $faker->dateTime,
                'idUsuarioModifica' => $faker->unique()->randomDigit,

            ]);
            Reporte::create([
                'idEstado' => 1,
                'idTipoNotificacion' => $random,
                'numeroReporte' => $faker->bothify('?###??##'),
                'passwordReporte' => $faker->bothify('?###??##'),
                'tituloReporte' => $faker->sentence,
                'fechaReporte' => $faker->dateTime,
                'fechaNotificacion' => $faker->dateTime,
                'origenNotificacion' => $faker->numberBetween($min = 1, $max = 2),
                'fechaCreacion' => $faker->dateTime,
                'idUsuarioCrea' => 'cuidadano',
                'fechaModificacion' => $faker->dateTime,
                'idUsuarioModifica' => $faker->unique()->randomDigit,

            ]);

        }

    }
}
