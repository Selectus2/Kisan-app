class CreateRents < ActiveRecord::Migration[5.2]
  def change
    create_table :rents do |t|
    	t.datetime :from
    	t.datetime :to
    	t.references :farmer
    	t.references :farmer_instrument

      t.timestamps
    end
  end
end
