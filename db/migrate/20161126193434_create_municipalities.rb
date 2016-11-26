class CreateMunicipalities < ActiveRecord::Migration[5.0]
  def change
    create_table :municipalities do |t|
      t.belongs_to :Department, foreign_key: true
      t.string :num_depto
      t.string :num_municip
      t.string :description

      t.timestamps
    end
  end
end
