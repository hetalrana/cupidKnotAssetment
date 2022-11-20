<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\User;

class UserFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    protected $model = User::class;

    public function definition()
    {
        $gender = $this->faker->randomElement(['male', 'female']);
        $string = $this->faker->dateTimeBetween('-40 years', '-20 years');
        $occupation = $this->faker->randomElement(['private', 'business','government']);
        $family_type = $this->faker->randomElement(['joint','neuclear']);
        $pre_family_type = $this->faker->randomElement(['joint','neuclear','joint,neuclear']);
        $is_manglik  = $this->faker->randomElement([0,1]);
        $pre_manglik  = $this->faker->randomElement([0,1,2]);
        $pre_occupation = $this->faker->randomElement(['private', 'business','government','business,government','private,government','business,government,private']);
        return [
            'first_name' => $this->faker->name(),
            'last_name' => $this->faker->name(),
            'email' => $this->faker->unique()->safeEmail(),
            'email_verified_at' => now(),
            'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
            'remember_token' => Str::random(10),
            'gender' => $gender,
            'date_of_birth' => $string,
            'annual_income' => rand(500000,90000000),
            'occupation' => $occupation,
            'family_type' => $family_type,
            'is_manglik' => $is_manglik,
            'pre_expected_income_min' => rand(50000,500000),
            'pre_expected_income_max' => rand(50001,90000000),
            'pre_manglik'=>$pre_manglik,
            'pre_family_type'=>$pre_family_type,
            'pre_occupation'=>$pre_occupation,
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */
    public function unverified()
    {
        return $this->state(function (array $attributes) {
            return [
                'email_verified_at' => null,
            ];
        });
    }
}
