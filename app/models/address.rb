class Address < ApplicationRecord
	validates :line_1, :line_2, :city, :pincode, presence: true
	
	belongs_to :farmer

end
