require 'rails_helper'

RSpec.describe Farmer,type: :model do
	
	it 'should successfully insert data' do
		@farmer_obj=Farmer.new(first_name:"Anurag",last_name:"Ganjiwale",mobile_number:"7256568256",email:"anu@gmail.com")
		expect(@farmer_obj.valid?).to eq true
		expect(@farmer_obj.save).to eq true				
	end

	it 'should return correct full name' do
		@farmer_obj = FactoryBot.create(:random_farmer)
		expect(@farmer_obj.full_name).to eq "#{@farmer_obj.first_name} #{@farmer_obj.last_name}"
	end
end