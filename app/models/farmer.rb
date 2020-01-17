class Farmer < ApplicationRecord
	validates :mobile_number, :first_name, :last_name, presence: true
	validates :mobile_number, uniqueness: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
	has_one :address
	has_many :farmer_instruments
	has_many :instruments, :through => :farmer_instruments
	has_many :instruments
	has_many :rents
	has_many :farmer_instruments, :through => :rents
	#has_many :rented_instruments, :through => :rents, class_name: 'Rent',foreign_key: 'farmer_instrument_id'
	
	after_save :titleize_names

	def titleize_names
		self.first_name = self.first_name.titleize
		self.last_name = self.last_name.titleize
	end

	def full_name
		self.first_name.to_s+ " " +self.last_name.to_s
	end

end

