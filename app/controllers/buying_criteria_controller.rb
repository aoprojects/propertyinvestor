class BuyingCriteriaController < ApplicationController
	before_action :find_buying_criteria, only: [:edit, :update, :destroy]

	def index
		@buying_criteria = BuyingCriteria.all
		@property_matches
	end

	def show
		@buying_criteria
		@property_match
		# make sure that matches are based on current_user only
	end

	def new
		# @buying_criteria = BuyingCriteria.all
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
		params.require(:buying_criteria).permit(:criteria_nickname, :address_street_number, :address_street_name, :address_unit_number, :address_city, :address_us_state, :address_us_zipcode, :off_market,
			:property_finished_sf_min, :property_finished_sf_max, :property_land_sf_min, :property_land_sf_max, :property_condition, :deal_type, :deal_urgency, :property_current_value_min, 
			:property_current_value_max, :property_estimated_arv_min, :property_estimated_value_max, :property_renovations_needed_min, :property_renovations_needed_max, :deal_repair_estimate, 
			:property_description_keywords, :deal_estimated_profit_min, :property_features_keywords, :under_direct_contract)

	end

	def find_buying_criteria
	end

end