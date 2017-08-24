class AddColumnToStudentTests < ActiveRecord::Migration[5.1]
  def change
  	add_column :student_tests, :test_id, :integer
  end
end
