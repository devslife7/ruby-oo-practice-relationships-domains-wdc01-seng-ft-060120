
class Bakery
    attr_accessor :name

    @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
        @@all        
    end
    
    def ingredients
        found_ingredients = []
        
        desserts.each do |dessert|
            Ingredient.all.each do |ingredient|
                if ingredient.dessert == dessert
                    found_ingredients << ingredient
                end
            end
        end
        found_ingredients
    end
    
    def desserts
        Dessert.all.select do |dessert|
            dessert.bakery == self
        end
    end

    def shopping_list
        ingredients.collect do |ingredient|
            ingredient.name
        end
    end
    
    def average_calories
        calories = ingredients.collect do |ingredient|
            ingredient.calorie_count
        end

        calorie_average = 0
        calories.each do |calorie|
            calorie_average += calorie
        end

        calorie_average = calorie_average / calories.length
    end
end