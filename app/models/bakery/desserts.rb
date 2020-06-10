
class Dessert
    attr_accessor :name

    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end
            
    def self.all
        @@all        
    end

    def ingredients
        Ingredient.all.select do |ingredient|
            ingredient.dessert == self
        end
    end

    def bakery
        @bakery
    end

    def calories
        calorie_count = 0

        ingredients.each do |ingredient|
            calorie_count += ingredient.calorie_count
        end
        calorie_count
    end
end