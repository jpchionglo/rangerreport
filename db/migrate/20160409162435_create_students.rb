class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :grade
      t.string :homeroom
      t.string :house
      t.decimal :absences
      t.decimal :attendance
      t.decimal :tardies
      t.boolean :track
      t.decimal :servhrs
      t.decimal :cgpa
      t.decimal :ugpa
      t.decimal :wgpa
      t.integer :crank
      t.integer :csize
      t.decimal :credits
      t.integer :detentions
      t.string :eligible
      t.integer :totalf
      t.integer :totald
      t.integer :totalc
      t.integer :totalb
      t.integer :totala

      t.timestamps null: false
    end
  end
end
