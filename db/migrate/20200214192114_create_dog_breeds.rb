class CreateDogBreeds < ActiveRecord::Migration[6.0]
  def change
    create_table :dog_breeds do |t|
      t.string :Name
      t.references :country_origin, null: false, foreign_key: true
      t.references :lifespan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
