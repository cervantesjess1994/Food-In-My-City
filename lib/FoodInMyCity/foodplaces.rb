class FoodInMyCity::Foodplaces
        attr_accessor :name, :address, :rating, :link
        @@all = []

        def initialize(name, address, rating, link)
            @name = name
            @address = address
            @rating = rating
            @link = link
            @@all << self
        end

        def self.all
            @@all
        end

        def self.get_names
            self.all.collect{|fp| fp.name}.uniq
        end
        






end

