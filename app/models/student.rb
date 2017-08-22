class Student < ApplicationRecord
	belongs_to :cohort
	has_many :tests
end
