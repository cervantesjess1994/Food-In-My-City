class FoodInMyCity::CLI
    
    def call
        FoodInMyCity::API.new.fetch
        puts "Welcome to Palo Alto, home of El Palo Alto!"
    end

    def begin
        #display food names method
        #show info method
    end

    def display_fp_names
        @foodplace =FoodInMyCity::Foodplaces.get_names.each.with_index do
            puts " #{i+1}. #{fp}"
        end
    end

    def show_info
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