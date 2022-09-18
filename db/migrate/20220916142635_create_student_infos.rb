class CreateStudentInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :student_infos do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :address
      t.integer :geneder
      t.string :occuption
      t.integer :matrial_status

      t.timestamps
    end
  end
end
