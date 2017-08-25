class InstructorsController < ApplicationController
	
	before_action :set_instructor, only: [:show, :edit, :update, :destroy]

	def index
		@instructors = Instructor.all
	end

	def show
		# @students = Student.all.select { |student| student.cohort_id == @instructor.cohort_id}
	end

	def new
		@instructor = Instructor.new
	end

	def create
		@instructor = Instructor.new(instructor_params)
		if @instructor.valid?
			@instructor.save
			session[:instructor_id] = @instructor.id
			redirect_to instructor_path(@instructor)
		else
			render :new
		end
	end

	def edit
	end

	def update
		@instructor.update(instructor_params)
		if @instructor.save
			redirect_to instructor_path(@instructor)
		else 
			render :edit
		end
	end

	def remove_cohort

	end

	def destroy
		CohortInstructor.find().destroy
		flash[:success] = "Cohort deleted"
    	redirect_to instructor_path(session[:instructor_id])
	end


	private

	def instructor_params
		params.require(:instructor).permit(:name, :instructor_feedback, :password, cohort_ids: [])
	end

	def set_instructor
		@instructor = Instructor.find(params[:id])
	end
end
