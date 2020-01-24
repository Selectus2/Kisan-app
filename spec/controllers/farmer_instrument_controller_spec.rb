require 'rails_helper'

RSpec.describe FarmerInstrumentsController, type: :controller do
	before(:each) do
		@farmer_obj=FactoryBot.create(:random_farmer)
		@instrument_obj=FactoryBot.create(:random_instrument)
		@farmer_instrument_obj=FactoryBot.create(:random_farmer_instrument, farmer_id: @farmer_obj.id, instrument_id: @instrument_obj.id) 
	end
	it "renders the index with proper status code" do
		# @farmer_obj=Farmer.create(first_name:"Anurag",last_name:"Ganjiwale",mobile_number:"7256568256",email:"anu@gmail.com")
		# @instrument_obj=Instrument.create(name: "Mini Tractor",brand:"Mahindra",specification:"djagh")
		# @farmer_instrument_obj=FarmerInstrument.create(farmer_id: 1,instrument_id: 1, available_from:"2020-1-10".to_date, available_to:"2020-1-12".to_date)
		get :index
		expect(response).to render_template("index")
	end

	it "renders the show with propor status code" do
		params = {id: @farmer_instrument_obj.id}
	 	get :show,  params: params
	 	expect(response).to have_http_status(:success)
  end

  it "performs destroy operation correctly" do
		params = {id: @farmer_instrument_obj.id}
	 	get :destroy,  params: params
	 	expect(response).to have_http_status(:redirect)
  end 
  		
end