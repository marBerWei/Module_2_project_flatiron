class StudentTest < ApplicationRecord
	belongs_to :student
	belongs_to :test
	validates :test_id, uniqueness: true
	validates :student_id, uniqueness: true
end
