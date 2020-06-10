
class Ingredient
    attr_accessor :name, :dessert, :calorie_count

    @@all = []
    def initialize(name, dessert, cal)
        @name = name
        @dessert = dessert
        @@all << self
        @calorie_count = 90
    end

    def self.all
        @@all        
    end

    def dessert
        @dessert
    end

    def bakery
        Dessert.all.each do |dessert|
            if dessert == @dessert
                return dessert.bakery
            end
        end
    end
    
    def self.find_by_name(ingredient)
        self.all.select do |ing|
            ing.name.split(" ")[0] == ingredient
        end
    end
    
end