class FoodInMyCity::CLI
    
    def call
        FoodInMyCity::API.fetch
        puts "Welcome to Palo Alto, home of El Palo Alto!"
        run
    end

    def run
        display_fp_names
        display_info
        exit
    end

    def display_fp_names
        @foodplace = FoodInMyCity::Foodplaces.get_names.each.with_index do
            puts "#{index + 1}. #{fp}"
            #get details then dispay info method 
            puts "Enter corresponding number to the food place you'd like to visit."
            num = gets.chomp
                if valid?(num, @foodplace)
                    
        end
    end

    def display_info(input)
        fp = @foodplace[input-1] #-1 snce input would be index+1
         puts <<~HEREDOC
            Address: #{fp["location"]["display_address"]}
            Rating: #{fp["rating"]}
            Link: #{fp["url"]}
            HEREDOC
    end


    def input
        input = gets.chomp
    end

    def valid?(input,array)
        if input == "done"
            exit
        end
        input.to_i
        input.between?(1,array.length) 
    end

    def exit
        if input == "done"
            puts "Thank you, come again!"
        elsif 
            input == "no"
            run
        else
           puts "Sorry, wrong input. Please try again"
        end
    end
end