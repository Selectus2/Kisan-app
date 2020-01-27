class Instrument < ApplicationRecord
	validates :name, :brand, :specification, presence: true
	has_many :farmer_instruments
	has_many :farmers, :through => :farmer_instruments
	mount_uploader :image, ImageUploader

end
