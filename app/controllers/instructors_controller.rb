class InstructorsController < ApplicationController
	
	before_action :set_instructor, only: [:show, :edit, :update, :destroy]

	def index
		@instructors = Instructor.all
	end

	def show
	end

	def new
		@instructor = Instructor.new
	end

	def create
		@instructor = Instructor.new(instructor_params)
		if valid?
			@instructor.save
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
			redirect_to instructors_path
		else 
			render :edit
		end
	end

	def destroy
		@instructor.destroy
	end

	private

	def instructor_params
		params.require(:instructor).permit(:name, :instructor_feedback, :cohort_id)
	end

	def set_instructor
		@instructor = Instructor.find(params[:id])
	end
end
