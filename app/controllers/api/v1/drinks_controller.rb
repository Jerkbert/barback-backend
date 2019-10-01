class Api::V1::DrinksController < ApplicationController
    def index
        drinks = Drink.all
        render json: drinks
    end

    def create
        drink = Drink.create(drink_params)

    end

end
