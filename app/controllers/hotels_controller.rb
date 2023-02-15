class HotelsController < ApplicationController
	
  def index
    hotel = Hotel.all
  end

  def create
    	hotel = Hotel.create!(hotel_params)
    	session[:hotel_id] = hotel.id
  		redirect_to root_path
  	end

  private
    def hotel_params
      params.require(:name).permit(:email, :phon, :image, :address, :city, :description)
    end
end
