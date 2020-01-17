class FarmerInstrument < ApplicationRecord
	validates :rent_per_hour ,presence: true
	belongs_to :farmer
	belongs_to :instrument  
	has_many :rents
	#has-many :borrowers, :through => :rents, class_name: 'Farmer', foreign_key: 'farmer_id'	
end
