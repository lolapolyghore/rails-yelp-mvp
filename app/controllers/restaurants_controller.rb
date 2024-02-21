class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
    @reviews = @restaurant.reviews
  end

  def new
    @restaurant = Restaurant.new
  end

end
