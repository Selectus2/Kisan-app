class FarmersController < ApplicationController
  def index
		@farmers = Farmer.all()
		@query= Farmer.all.order(:first_name,:last_name)
	end

	def show
		@farmer_data = Farmer.find(params[:id])
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
		@ad = Farmer.create(permit_params)
 		#redirect_to farmer_instruments_path(@advertisement)
 		redirect_to farmer_path(@ad)

	end

	def edit
		@farmer_to_edit = Farmer.find(params[:id])
	end
	"""
	def update
		@update_form=FarmerInstrument.find(params[:id])
		@update_form.update(:rent_per_hour:params[])
	end
	"""
	def destroy
  	@farmer_entry = Farmer.find(params[:id])
  	@farmer_entry.destroy
		redirect_to farmers_path
	end

	private

	def permit_params
		params.require(:farmer).permit(:first_name,:last_name,:mobile_number,:email)
	end
end
