class Student < ApplicationRecord
	belongs_to :cohort, optional: true
	has_many :tests
	has_many :instructors, through: :cohort

	has_secure_password optional: true

	validates :name, presence: true

end
