class Property < ActiveRecord::Base
	# todo before actions
	# todo validate presence of certain items

	# todo helper methods .match?

	belongs_to :user, :dependent => :delete
end
