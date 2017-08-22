class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
    	t.string :name
    	t.text :instructor_feedback
    	t.integer :cohort_id
      t.timestamps
    end
  end
end
