class StudentsController < ApplicationController
	
	before_action :set_student, only: [:show, :edit, :update, :destroy]

	def index
		@students = Student.all
	end

	def show
		@tests = Test.where(student_id: session[:student_id])
		# if !@student(params[:id])
		# 	flash[:message] = "You are not #{@student.name}! GTFO!"
		# end
	end


	def new
		@student = Student.new
	end

	def create
		@student = Student.new(student_params)
		if @student.save
			
			redirect_to student_path(@student)
		else
			render :new
		end
	end

	def edit
	end

	def update
		@student.update(student_params)
		if @student.save
			redirect_to students_path
		else 
			render :edit
		end
	end

	def destroy
		@student.destroy
	end

	private

	def student_params
		params.require(:student).permit(:name, :instructor_feedback, :cohort_id, :password)
	end

	def set_student
		@student = Student.find(params[:id])
	end
end
