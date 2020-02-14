class CreateTemperaments < ActiveRecord::Migration[6.0]
  def change
    create_table :temperaments do |t|

      t.timestamps
    end
  end
end
