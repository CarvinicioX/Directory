class CreateDepartments < ActiveRecord::Migration[5.0]
  def change
    create_table :departments do |t|
      t.string :num_dept
      t.text :description

      t.timestamps
    end
  end
end
