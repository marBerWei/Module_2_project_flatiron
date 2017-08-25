class StudentTest < ApplicationRecord
	belongs_to :student
	belongs_to :test
	validates :student_id, uniqueness: { scope: :test_id,
    message: "Each student takes each test one time" }
end
