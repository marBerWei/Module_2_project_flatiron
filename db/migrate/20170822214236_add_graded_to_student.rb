class AddGradedToStudent < ActiveRecord::Migration[5.1]
  def change
  	add_column :students, :graded, :string, default: "pending"
  end
end
