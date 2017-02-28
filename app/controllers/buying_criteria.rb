class BuyingCriteriaController < ApplicationController

	def index
		@buying_criteria = BuyingCriterium.all
	end

	def show
	end

	def new
		@buying_criteria = BuyingCriterium.new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

private
	def buying_criteria_params
	end

	def find_buying_criteria
	end

end