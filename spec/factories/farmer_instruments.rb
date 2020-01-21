FactoryBot.define do	
	factory :random_farmer_instrument, class: FarmerInstrument do
		rent_per_hour {Faker::Number.between(from: 100, to: 500)}
		deposit {Faker::Number.between(from: 2000,to: 7000)}
		available_from {Faker::Date.backward(days:5)} 
		available_to {Faker::Date.forward(days:9)}
	end
end	