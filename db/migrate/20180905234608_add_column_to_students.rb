class AddColumnToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :age, :integer
  end
end
