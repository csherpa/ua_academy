class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :image_url
      t.string :firstname
      t.string :lastname
      t.string :quirk
      t.integer :cohort_id
      t.timestamps
    end
  end
end