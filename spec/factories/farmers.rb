FactoryBot.define do	
	factory :random_farmer, class: Farmer do 
		first_name { Faker::Name.first_name }
		last_name  { Faker::Name.last_name }
		mobile_number {Faker::Number.number(digits: 10)}
		email {Faker::Internet.safe_email}
	end
end

