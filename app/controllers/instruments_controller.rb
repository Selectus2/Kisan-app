class InstrumentsController < ApplicationController
  def index
		@instruments = Instrument.all()
		@query= Instrument.all.order(:name)
	end

	def show
		@instrument_data = Instrument.find(params[:id])
		#@farmer_data = @ad.farmer
		#@instrument_data = @ad.instrument
	end

	def new
		#@farmer_list = Farmer.all.collect{|u| [u.first_name,u.id]}
		#@instrument_lsit = Instrument.all.collect{|u| [u.name,u.id]}
	end

	def create
		#render plain: params[:farmer_instrument].inspect
		#byebug
		@ad = Instrument.create(permit_params)
 		#redirect_to farmer_instruments_path(@advertisement)
 		redirect_to instrument_path(@ad)

	end

	def edit
		@instrument_to_edit = Instrument.find(params[:id])
	end
	"""
	def update
		@update_form=FarmerInstrument.find(params[:id])
		@update_form.update(:rent_per_hour:params[])
	end
	"""
	def destroy
  	@instrument_entry = Instrument.find(params[:id])
  	@instrument_entry.destroy
		redirect_to instruments_path
	end

	private

	def permit_params
		params.require(:instrument).permit(:name,:brand,:specification, :image)
	end
end
