<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class PeopleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('people')->insert([
            "name"=>"Ufuk Demirel",
            "email"=>"ufukdemirel234@gmail.com",
            "password"=>Hash::make('010101'),
            "permission_level"=>"admin"
        ]);
    }
}
