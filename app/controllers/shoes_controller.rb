class ShoesController < ApplicationController 
    def index  
        @shoes = Shoe.all
    end

    def show
        find_shoe
    end

    def new 
        @shoe = Shoe.new 
    end

    def create 
        @shoe = Shoe.new(shoe_params)
        if @shoe.save
            redirect_to shoes_path
        else
            render :new
        end
    end

    def edit 
        find_shoe
    end

    def update 
        find_shoe
        @shoe.update(shoe_params)
        if @shoe.valid?
            redirect_to shoe_path(@shoe)
        else
            render :edit
        end
    end

    def most_expensive
        @shoes = Shoe.order_by_price
        render :index
    end

    def destroy 
        find_shoe
        @shoe.destroy 
        redirect_to shoes_path
    end

    private 

    def shoe_params
        params.require(:shoe).permit(:name, :color, :price, :condition)
    end

    def find_shoe 
        Shoe.find_by_id(params[:id])
    end