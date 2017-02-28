class CreateBuyingCriteria < ActiveRecord::Migration
  def change
    create_table :buying_criteria do |t|
      t.string :criteria_nickname
      t.string :address_street_number
      t.string :address_street_name
      t.string :address_unit_number
      t.string :address_city
      t.string :address_us_state
      t.string :address_us_zipcode
      t.boolean :off_market
      t.integer :property_finished_sf_min
      t.integer :property_finished_sf_max
      t.integer :property_land_sf_min
      t.integer :property_land_sf_max
      t.string :property_condition
      t.string :deal_type
      t.string :deal_urgency
      t.integer :property_current_value_min
      t.integer :property_current_value_max
      t.integer :property_estimated_arv_min
      t.integer :property_estimated_value_max
      t.integer :property_renovations_needed_min
      t.integer :property_renovations_needed_max
      t.boolean :deal_repair_estimate
      t.string :property_description_keywords
      t.integer :deal_estimated_profit_min
      t.string :property_features_keywords
      t.boolean :under_direct_contract

      t.timestamps null: false
    end
  end
end
