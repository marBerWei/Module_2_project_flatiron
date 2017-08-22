class CreateCohortInstructors < ActiveRecord::Migration[5.1]
  def change
    create_table :cohort_instructors do |t|
    	t.integer :cohort_id
    	t.integer :instructor_id
      t.timestamps
    end
  end
end
