class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
    	t.string :address_unit
    	t.string :address_street
    	t.string :address_city
    	t.string :address_us_state
    	t.integer :address_us_zipcode
    	t.integer	:property_finished_sf
    	t.integer :property_land_sf
    	t.string :property_condition
    	t.string :deal_type
    	t.string :deal_urgency
    	t.integer :property_current_value
    	t.integer :property_estimated_arv
    	t.integer :property_renovations_needed
    	t.boolean :deal_repair_estimate
    	t.text :proeprty_description
    	t.text :deal_additional_details
    	t.boolean :off_market

      t.timestamps null: false
    end
  end
end
