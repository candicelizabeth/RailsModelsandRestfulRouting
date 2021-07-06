class Shoe < ApplicationRecord
    validates :condition, presence: true
    validates :name, presence: true, two_word: true, length: {minimum: 2, message: "has to be longer than 2!!!!!"}
    validates :price, numericality: {greater_than: 0, less_than: 5000}
    validates :color, presence: true, two_word: true, uniqueness: {scope: [:name, :price]}
    validate :too_many_shoes

    def name_and_color 
        "#{self.name} - #{self.color}"
    end

    def self.order_by_price 
        self.order(price: :desc).limit(1)
    end

    # def self.most_expensive 
    #     self.where("LIMIT 1")
    # end

    def too_many_shoes 
        if Shoe.all.length >= 6
            errors.add(:base, :invalid, message: "you have too many Shoes!")
        end
    end
end
