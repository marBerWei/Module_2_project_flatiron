class TestsController < ApplicationController

	before_action :set_test, only: [:show, :edit, :update, :destroy]

	def show
	end

	def new
		@test = Test.new
	end

	def edit
	end

	def create
		@test = Test.create(test_params)

		if @test.save
			redirect_to test_path(@test)
		else
			render :new
		end
	end

	private

	def test_params
		params.require(:test).permit(:name, :student_id)
	end

	def set_test
		@test = Test.find(params[:id])
	end

end
