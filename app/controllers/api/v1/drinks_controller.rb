class Api::V1::DrinksController < ApplicationController

  def index
    drinks = Drink.all
    render json: drinks
  end
  
  def create
    drink = Drink.new(drink_params)
    if drink.save
      render json: drink, status: :created, location: drink
    else
      render json: {errors: drink.errors.full_messages}, status: :unprocessable_entity
    end
  end

  private

  def set_drink
    drink = Drink.find(params[:id])
  end

  def drink_params
    params.require(:drink).permit(:name, :description, :image_url)
  end
end
