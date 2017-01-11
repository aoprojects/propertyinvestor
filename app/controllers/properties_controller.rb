class PropertiesController < ApplicationController
	before_action :find_property, only: [:show, :edit, :update, :destroy]

	def index
		@properties = Property.all
	end

	def show
		@property
	end

	def new
		@property = Property.new
	end

	def create
		@property = Property.new(property_params)

		if @property.save
			redirect_to @property, notice: "Property successfully saved."
		else
			render 'new', notice: "Oh no, your post was not saved."
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end


private
	def property_params
		params.require(:property).permit(:address_unit, :address_street, :address_city, :address_us_state, :address_us_zipcode, :property_finished_sf, :property_land_sf, :property_condition, :deal_type, :deal_urgency, :proeprty_current_value, :property_estimated_arv, :proeprty_renovations_needed, :deal_repair_estimate, :property_description, :deal_additional_details, :off_market)
	end

	def find_property
		@property = Property.find(params[:id])
	end
end