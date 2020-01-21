FactoryBot.define do	
	factory :random_address, class: Address do 
		line_1 {Faker::Address.street_address}
		line_2 {Faker::Address.secondary_address}
		city {Faker::Address.city}
		pincode {Faker::Address.postcode}
		state {Faker::Address.state}
		country {Faker::Address.country}
	end
end