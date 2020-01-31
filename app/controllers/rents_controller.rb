class RentsController < ApplicationController
  def index
    @rents = Rent.all
    @ads = FarmerInstrument.all.includes(:farmer, :instrument)
  end

def show
  @specadd = Rent.find(params[:id])
end

def new
end

def create
  @rents = Rent.create(permit_params)
  @instrument_rec=FarmerInstrument.find(@rents.farmer_instrument_id)
  @instrument_rec.update(is_available: false)
  redirect_to rents_path
end

private

def permit_params
  params[:rent].permit(:farmer_instrument_id, :farmer_id, :from, :to)
end
end
