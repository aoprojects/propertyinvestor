class AddUnderContractToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :under_direct_contract, :boolean
  end
end
