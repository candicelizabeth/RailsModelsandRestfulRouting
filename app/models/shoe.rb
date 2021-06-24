class Shoe < ApplicationRecord
    def name_and_color 
        "#{self.name} - #{self.color}"
    end

    def self.order_by_price 
        self.order(price: :desc).limit(1)
    end

    # def self.most_expensive 
    #     self.where("LIMIT 1")
    # end
end
