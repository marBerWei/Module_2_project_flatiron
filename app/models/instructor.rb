class Instructor < ApplicationRecord
	has_many :cohort_instructors
	has_many :cohorts, through: :cohort_instructors
	has_many :students, through: :cohorts
end

