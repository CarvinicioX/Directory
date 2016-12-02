class CreateSectors < ActiveRecord::Migration[5.0]
  def change
    create_table :sectors do |t|
      t.belongs_to :Municipality, foreign_key: true
      t.string :num_sector
      t.string :description

      t.timestamps
    end
  end
end
