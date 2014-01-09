smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'brocoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}

class Blender
  
  attr_accessor :power_on

  def initialize ()
    @power_on = false
  end 

  def power_on
    @power_on = true
  end

  def blend(ingredients)
    if @power_on
      ingredients_nospaces = ingredients.keys.join.delete(" ")
      blended_ingredients = ingredients_nospaces.split("").shuffle.join("")
      puts blended_ingredients
    else
      puts "Blender is off."
    end
  end

end

new_blender = Blender.new
new_blender.power_on
new_blender.blend(smoothie_ingredients)


