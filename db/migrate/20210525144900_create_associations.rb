class CreateAssociations < ActiveRecord::Migration[6.0]
  def change
    create_table :associations do |t|
      t.references :food, null: false, foreign_key: true
      t.references :bottle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
