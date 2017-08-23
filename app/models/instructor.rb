class Instructor < ApplicationRecord
	has_many :cohort_instructors
	has_many :cohorts, through: :cohort_instructors
	has_many :students, through: :cohorts

	has_secure_password

	validates :name, presence: true
end

