FactoryBot.define do	
	factory :random_instrument, class: Instrument do 
		name { Faker::Vehicle.make_and_model  }
		brand  { Faker::Vehicle.manufacture}
		specification {Faker::Vehicle.standard_specs}
	end
end	