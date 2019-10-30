class FoodInMyCity::CLI
    
    def call
        FoodInMyCity::API.new.fetch
        FoodInMyCity::Foodplaces.all.each do |fp|
            puts fp.name
        end
    end





    def exit
        if gets.chomp == "exit"
            puts "Thank you, come again!"
        elseif gets.chomp == back
            #send back to program
            #run program
        else
           puts "Sorry, wrong input. Please try again"
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
