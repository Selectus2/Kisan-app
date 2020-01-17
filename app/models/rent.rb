class Rent < ApplicationRecord
	belongs_to :farmer_instrument
	belongs_to :farmer
	#belongs_to :borrower, class_name: 'Farmer', foreign_key: 'farmer_id' 
end

