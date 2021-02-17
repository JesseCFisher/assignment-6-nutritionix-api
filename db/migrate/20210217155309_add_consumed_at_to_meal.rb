class AddConsumedAtToMeal < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :consumed_at, :datetime
  end
end
