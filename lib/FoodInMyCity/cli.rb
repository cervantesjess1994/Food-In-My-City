class FoodInMyCity::CLI
    
    def call
        FoodInMyCity::API.new.fetch
        FoodInMyCity::Foodplaces.all.each do |fp|
            puts fp.name
        end
    end

    def input
        input == get.chomp
    end

    def valid?(input,array)
        if input == "done"
            exit
        end
        input.to_i
        input.between?(0,array.length)
    end




    def exit
        if input == "done"
            puts "Thank you, come again!"
        elsif input == "no"
            #run program again
        else
           puts "Sorry, wrong input. Please try again"
        end
    end



end

    #something to display list of choices according to city Palo Alto
    #if they press a number ---> food place name
    #after choosing foodplace display foodplace info
    #method to return the foodplace details
    #method that makes list of food places
    #method that takes user input(a number) and returns that foodplce + its details
    #an exit method for when user is done 
    #valid methods
