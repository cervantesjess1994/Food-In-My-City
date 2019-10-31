class FoodInMyCity::Foodplaces
        attr_accessor :name, :address, :rating, :link
       
        @@all = []

        def initialize(fp_hash)
            @name = fp_hash[:name]
            @address = fp_hash[:address]
            @rating = fp_hash[:rating]
            @link = fp_hash[:link]
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

