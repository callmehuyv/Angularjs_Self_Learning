<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;
 
use Faker\Factory as Faker;
 
class DatabaseSeeder extends Seeder
{
    public function run()
    {
    	$faker = Faker::create();
    	foreach (range(1, 100) as $index) {
	        DB::table('operators')->insert([
	            'name' => $faker->name,
	            'address' => $faker->address,
	            'phone' => $faker->phoneNumber,
	        ]);
        }
    }
}