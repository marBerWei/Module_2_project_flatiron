class Student < ApplicationRecord
	belongs_to :cohort, optional: true
	has_many :student_tests
	has_many :tests, through: :student_tests
	has_many :instructors, through: :cohort

	has_secure_password optional: true

	validates :name, presence: true

end
