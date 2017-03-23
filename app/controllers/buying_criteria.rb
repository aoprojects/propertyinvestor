class BuyingCriteriaController < ApplicationController
	before_action :find_buying_criteria, only: [:edit, :udpate, :destroy]


	def index
		@buying_criteria = BuyingCriteria.all
		@property_matches
	end

	def show
		@buying_criteria(buying_criteria_params)
		@property_match
		# make sure that matches are based on current_user only
	end

	def new
		@buying_criteria = BuyingCriteria.all
		@new_buying_criterium = BuyingCriterium.new
	end

	def create
		if
			@buying_criteria.save
			redirect_to @buying_criteria
				# redirect to show page for that buying criteria and its matches
		else
			redirect_to new_buying_criterium_path
		end
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