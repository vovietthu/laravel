<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class CategoryFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $image = $this->faker->image('public/storage/images/categories/',400,400, null, false);

        return [
            'name' => $this->faker->name,
            'image_path' => "/storage/images/categories/" . $image,
        ];
    }
}
