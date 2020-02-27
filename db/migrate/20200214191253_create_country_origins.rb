class CreateCountryOrigins < ActiveRecord::Migration[6.0]
  def change
    create_table :country_origins do |t|
      t.string :name
      t.string :abbriviation

      t.timestamps
    end
  end
end
