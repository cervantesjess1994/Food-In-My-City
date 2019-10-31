class FoodInMyCity::CLI
    
    def call
        FoodInMyCity::API.new.fetch
        puts "Welcome to Palo Alto, home of El Palo Alto!"
        #display food places
        #return the info of choice
    end

    def begin

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