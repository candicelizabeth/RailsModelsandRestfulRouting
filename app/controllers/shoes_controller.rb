class ShoesController < ApplicationController 
    def index  
        @shoes = Shoe.all
    end

    def show
        @shoe = Shoe.find_by_id(params[:id])
    end

    def most_expensive
        @shoes = Shoe.order_by_price
        render :index
    end
end