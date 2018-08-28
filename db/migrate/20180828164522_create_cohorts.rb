class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :title
      t.string :description
      t.integer :instructor_id
      t.integer :course_id
      t.timestamps
    end
  end
end
