class FavouritesController < ApplicationController
  def create
    @car = Car.find(params[:car_id])
    @favourite = Favourite.new
    @favourite.car = @car

    if @favourite.save
      redirect_to car_path(@car)
    else
      render 'cars/show'
    end
  end
  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroyredirect_to favourites_path
  end
end
