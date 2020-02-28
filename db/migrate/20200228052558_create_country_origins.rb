# frozen_string_literal: true

class CreateCountryOrigins < ActiveRecord::Migration[6.0]
  def change
    create_table :country_origins do |t|
      t.text :country_name
      t.string :abbreviation

      t.timestamps
    end
  end
end
