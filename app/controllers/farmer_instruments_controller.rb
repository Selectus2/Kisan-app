class FarmerInstrumentsController < ApplicationController
	# before_action :set_farmer_instrument, only: [:show, :edit, :update, :destroy]
	def index
		@ads = FarmerInstrument.all.includes(:farmer,:instrument)
		@query= Farmer.all.order(:first_name,:last_name)
		authorize @ads
	end

	def show
		@ad = FarmerInstrument.find(params[:id])
		@farmer_data = @ad.farmer
		@instrument_data = @ad.instrument
		authorize @ad
	end

	def new
		#@farmer_list = Farmer.all.collect{|u| [u.first_name,u.id]}
		#@instrument_lsit = Instrument.all.collect{|u| [u.name,u.id]}
	end

	def create
		#render plain: params[:farmer_instrument].inspect
		#byebug
		@ad = FarmerInstrument.create(permit_params)
 		#redirect_to farmer_instruments_path(@advertisement)
		authorize @ad
 		redirect_to farmer_instruments_path

	end

	def edit
		@ad_to_edit = FarmerInstrument.find(params[:id])
		authorize @ad_to_edit
	end
	"""
	def update
		@update_form=FarmerInstrument.find(params[:id])
		@update_form.update(:rent_per_hour:params[])
	end
	"""
	def destroy
  	@ad = FarmerInstrument.find(params[:id])
		authorize @ad
  	@ad.destroy
		redirect_to farmer_instruments_path
	end

	private

	def permit_params
		params.require(:farmer_instrument).permit(:rent_per_hour, :deposit,:farmer_id,:instrument_id,:available_from, :available_to,:is_available)
	end

end
