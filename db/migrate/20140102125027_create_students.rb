class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.string :sex
      t.string :phone
      t.string :course

      t.timestamps
    end
  end
end
