<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Category;
use App\Models\Brand;
use Illuminate\Support\Facades\Storage;

class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $image = $this->faker->image('public/storage/images/products/',400,400, null, false);
        $is_discount = $this->faker->numberBetween(0,1,2);

        return [
            'name' => $this->faker->name,
            'price' => $this->faker->numberBetween(10000, 100000),
            'category_id' =>  Category::all()->random()->id,
            'brand_id' => Brand::all()->random()->id,
            'image_path' => "/storage/images/products/" . $image,
            'description' => $this->faker->paragraph,
            'qty' => $this->faker->numberBetween(10, 1000),
            'qty_buy' => $this->faker->numberBetween(10, 1000),
            'type' => $is_discount,
            'discount' => $is_discount === 1 ? $this->faker->numberBetween(1, 100) : 0
        ];
    }
}
