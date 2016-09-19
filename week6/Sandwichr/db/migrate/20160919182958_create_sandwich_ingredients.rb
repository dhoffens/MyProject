class CreateSandwichIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :sandwich_ingredients do |t|
      t.belongs_to :sandwich
      t.belongs_to :ingredient

      t.timestamps
    end
  end
end
