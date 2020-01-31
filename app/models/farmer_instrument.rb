class FarmerInstrument < ApplicationRecord
	validates :rent_per_hour ,presence: true
	belongs_to :farmer
	belongs_to :instrument
	has_many :rents
	has_many :borrowers, through: :rents, class_name: "Farmer", foreign_key: 'farmer_id'

	def change_status
		if(is_available)
			is_available=false
		else
			is_available=true
		end
	end
end
