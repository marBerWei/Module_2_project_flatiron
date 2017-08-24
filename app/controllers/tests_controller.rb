class TestsController < ApplicationController

	before_action :set_test, only: [:show, :edit, :update, :destroy]

	def index
		@tests = Test.all
	end

	def show
	end

	def new
		@test = Test.new
	end

	def edit
	end

	def update

		@test.update(test_params)

		if @test.save
			redirect_to student_path(@test.student)
		else 
			render :edit
		end
	end

	def create
		@test = Test.create(test_params)

		if @test.save
			redirect_to cohorts_path
		else
			render :new
		end
	end

	private

	def test_params
		params.require(:test).permit(:name, :student_id, :graded, :instructor_feedback)
	end

	def set_test
		@test = Test.find(params[:id])
	end

end
