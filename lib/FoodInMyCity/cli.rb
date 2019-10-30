class FoodInMyCity::CLI
    def call
        FoodInMyCity::API.new.fetch
        FoodInMyCity::Restaurants.all.each do |r|
            puts r.name 
        end
    end
end

    #something to display list of choices according to their city or location of preference
    #if they press a number ---> food place name
    #after choosing foodplace display foodplace info
    #method to return the foodplace details
    #method that makes list of food places
    #method that takes user input(a number) and returns that foodplce + its details
    #an exit method for when user is done 
    #valid methods
