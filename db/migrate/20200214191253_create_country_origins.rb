class CreateCountryOrigins < ActiveRecord::Migration[6.0]
  def change
    create_table :country_origins do |t|
      t.string :Name
      t.string :Abbriviation

      t.timestamps
    end
  end
end
