class CreateFarmerInstruments < ActiveRecord::Migration[5.2]
	def change
		create_table :farmer_instruments do |t|
			t.integer :rent_per_hour
			t.boolean :is_available
			t.integer :deposit
			t.datetime :available_from
			t.datetime :available_to
			t.references :farmer
			t.references :instrument 		
			t.timestamps
		end
	end
end
