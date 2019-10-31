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

        def self.get_names_foodplace(n)
            name = self.get_names
            fp = self.all.select {|fp| fp.name.include?(name)}
        end
end

