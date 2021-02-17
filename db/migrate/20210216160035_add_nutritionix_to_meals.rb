class AddNutritionixToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :nutritionix, :string
  end
end
