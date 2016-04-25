class AddColumnsToStudent < ActiveRecord::Migration
  def change
    add_column :students, :email, :string
    add_column :students, :photo, :string
    add_column :students, :school_id, :integer
    add_column :students, :teacher_id, :integer
  end
end
