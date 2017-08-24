class RenameTestsTable < ActiveRecord::Migration[5.1]
  def change
  	rename_table('tests', 'student_tests')
  end
end
