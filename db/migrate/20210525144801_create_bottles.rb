class CreateBottles < ActiveRecord::Migration[6.0]
  def change
    create_table :bottles do |t|
      t.string :name
      t.string :vineyard
      t.integer :year
      t.text :description
      t.integer :peak_year
      t.text :preservation_advice
      t.references :wine_type, null: false, foreign_key: true
      t.references :region, null: false, foreign_key: true
      t.references :grape, null: false, foreign_key: true

      t.timestamps
    end
  end
end
