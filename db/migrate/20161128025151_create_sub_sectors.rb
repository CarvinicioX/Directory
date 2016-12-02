class CreateSubSectors < ActiveRecord::Migration[5.0]
  def change
    create_table :sub_sectors do |t|
      t.belongs_to :Sector, foreign_key: true
      t.string :num_subsector
      t.string :description

      t.timestamps
    end
  end
end
