class AddColumnToInstructors < ActiveRecord::Migration[5.2]
  def change
    add_column :instructors, :age, :integer
    add_column :instructors, :salary, :integer
    add_column :instructors, :education, :string
  end
end
