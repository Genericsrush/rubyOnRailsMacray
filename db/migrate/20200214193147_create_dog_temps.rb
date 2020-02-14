class CreateDogTemps < ActiveRecord::Migration[6.0]
  def change
    create_table :dog_temps do |t|
      t.references :cat, null: false, foreign_key: true
      t.references :temperament, null: false, foreign_key: true

      t.timestamps
    end
  end
end
