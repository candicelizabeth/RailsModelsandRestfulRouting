module ShoesHelper
    def display_price 
        if @shoe.price > 50
            content_tag(:h6, "Shoe Price: #{@shoe.price}")
        else 
            content_tag(:h1, "Shoe Price: #{@shoe.price}")
        end 
    end
end
