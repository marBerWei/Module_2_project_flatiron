class Cohort < ApplicationRecord
	has_many :students
	has_many :cohort_instructors
	has_many :cohorts, through: :cohort_instructors
	has_many :tests, through: :students

	def new_student
	end

	def new_student=(name)
		student = Student.new(name:name, cohort_id: self.id)
		if student.valid?
			student.save
			self.students << student 
		end
	end
end
