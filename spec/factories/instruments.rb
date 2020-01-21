FactoryBot.define do	
	factory :random_instrument, class: Instrument do 
		name { Faker::Vehicle.make_and_model  }
		brand  { Faker::Vehicle.manufacture}
		specfication {Faker::Vehicle.standard_specs}
	end
end	