<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class BrandFactory extends Factory
{

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $image = $this->faker->image('public/storage/images/brands/',400,400, null, false);
        return [
            'name' => $this->faker->name,
            'image' => "/storage/images/brands/" . $image
        ];
    }
}
