class Cohort < ApplicationRecord
	has_many :students
	has_many :cohort_instructors
	has_many :cohorts, through: :cohort_instructors
	has_many :tests, through: :students

	def new_student
	end

	def new_student=(name)
		self.students << Student.create(name:name, cohort_id: self.id)
		# if student.valid?
		# 	student.save
		# end
	end
end
