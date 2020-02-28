class CreateCatBreeds < ActiveRecord::Migration[6.0]
  def change
    create_table :cat_breeds do |t|
      t.string :breed_name
      t.references :country_origin, null: false, foreign_key: true
      t.string :age_range

      t.timestamps
    end
  end
end
