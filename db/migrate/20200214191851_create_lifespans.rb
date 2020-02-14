class CreateLifespans < ActiveRecord::Migration[6.0]
  def change
    create_table :lifespans do |t|
      t.string :age_range

      t.timestamps
    end
  end
end
