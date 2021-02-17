class AddCaloriesToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :calories, :integer
  end
end
