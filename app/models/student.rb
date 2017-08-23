class Student < ApplicationRecord
	belongs_to :cohort, optional: true
	has_many :tests
	has_many :instructors, through: :cohort

	has_secure_password

	validates :name, presence: true

end
