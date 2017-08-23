class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
    	t.string :name
    	t.integer :student_id
    	t.text :instructor_feedback
    	t.boolean :meeting?
    	t.string :graded, default: 'pending'
      t.timestamps
    end
  end
end
