FactoryBot.define do	
	factory :random_rent, class: Rent do 
		from {Faker::Date.backward(days:5)} 
		to {Faker::Date.forward(days:9)}
	end
end