class StudentTestsController < ApplicationController

	before_action :set_student_test, only: [:show, :edit, :update, :destroy]

	def index
		@student_tests = StudentTest.all
	end

	def show
	end

	def new
		@student_test = StudentTest.new
		@student = Student.find(params[:student_id])
	end

	def edit
		@student_test = StudentTest.find(params[:id])
		@student = @student_test.student
	end

	def create
		@student_test = StudentTest.create(student_test_params)
		@student = @student_test.student

		if @student_test.save
			redirect_to student_path(@student)
		else
			redirect_to new_student_student_test_path
		end

	end

	

	def update

		@student_test.update(student_test_params)

		if @student_test.save
			redirect_to student_student_path(@student_test.student)
		else 
			render edit_student_student_test_path
		end
	end



	private

	def student_test_params
		params.require(:student_test).permit(:name, :student_id, :graded, :instructor_feedback, :test_id, :meeting?, :id)
	end

	def set_student_test
		@student_test = StudentTest.find(params[:id])
	end

end
