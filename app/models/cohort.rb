class Cohort < ApplicationRecord
	has_many :students
	has_many :cohort_instructors
	has_many :cohorts, through: :cohort_instructors
end
