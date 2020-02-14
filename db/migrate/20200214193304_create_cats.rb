class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.boolean :shots
      t.references :cat_breed, null: false, foreign_key: true
      t.references :cat_temp, null: false, foreign_key: true

      t.timestamps
    end
  end
end
