class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.boolean :shots
      t.references :dog_breed, null: false, foreign_key: true
      t.references :dog_temp, null: false, foreign_key: true

      t.timestamps
    end
  end
end
