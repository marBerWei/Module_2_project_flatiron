class Test < ApplicationRecord
	has_many :student_tests
	has_many :students, through: :student_tests
end