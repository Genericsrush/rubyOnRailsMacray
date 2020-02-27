class CreateTemperaments < ActiveRecord::Migration[6.0]
  def change
    create_table :temperaments do |t|
      t.string :behavour
      t.text :description

      t.timestamps
    end
  end
end
