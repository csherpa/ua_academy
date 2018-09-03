class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :firstname
      t.string :lastname
      t.string :postion
      t.string :quirk
      t.timestamps
    end
  end
end
