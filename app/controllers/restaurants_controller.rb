class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  # http://localhost:3000/restaurants/1
  def show
  end

  def new
    # instantiating it for the form
    @restaurant = Restaurant.new
  end

  def create
    # coming from the form in new
    # give the permitted params to the new restaurant
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      # show the new.html.erb and pass the @restaurant i tried to create
      render :new
      # http://localhost:3000/restaurants
      # essentially create a view for this action
    end
  end

  def edit
    # loading it for the form
  end

  def update
    # coming from the form in edit
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  # http://localhost:3000/restaurants/3
  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # strong params
  # whitelist the attributes to save
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end

end










