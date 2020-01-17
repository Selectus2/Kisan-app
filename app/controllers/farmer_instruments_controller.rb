class FarmerInstrumentsController < ApplicationController
	def index
		@ads = FarmerInstrument.all.includes(:farmer,:instrument)
		@query= Farmer.all.order(:first_name,:last_name)
	end

	def show
		@ad = FarmerInstrument.find(params[:id])
		@farmer_data = @ad.farmer
		@instrument_data = @ad.instrument
	end

	def new
		#@farmer_list = Farmer.all.collect{|u| [u.first_name,u.id]}
		#@instrument_lsit = Instrument.all.collect{|u| [u.name,u.id]} 
	end

	def create
		#render plain: params[:farmer_instrument].inspect
		#byebug
		@advertisement = FarmerInstrument.create(permit_params)
 		#redirect_to farmer_instruments_path(@advertisement)
 		redirect_to farmer_instrument_path(@advertisement)
 		
	end

	private 

	def permit_params
		params.require(:farmer_instrument).permit(:rent_per_hour, :deposit,:farmer_id,:instrument_id)
	end
end
