class CohortsController < ApplicationController
	def index
		@cohorts = Cohort.all
	end

	def show
		@cohort = Cohort.find(params[:id])
	end

	def new
		@cohort = Cohort.new
	end

	def create
		@cohort = Cohort.new(cohort_params)
		if @cohort.save
			redirect_to cohorts_path
		else
			render :new
		end
	end

	def edit
		@cohort = Cohort.find(params[:id])
	end

	def update
		@cohort = Cohort.find(params[:id])
		@cohort.update(cohort_params)
		redirect_to cohort_path(@cohort)
	end

	private

	def cohort_params
		params.require(:cohort).permit(:name, :new_student, student_ids: [])
	end

end
