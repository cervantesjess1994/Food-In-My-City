class FoodInMyCity::CLI
    
    def call
        FoodInMyCity::API.new.fetch
        puts "Welcome to Palo Alto, home of El Palo Alto!"
        begin
    end

    def begin
        display_fp_names
        display_info
    end

    def display_fp_names
        @foodplace = FoodInMyCity::Foodplaces.get_names.each.with_index do
            puts " #{i+1}. #{fp}"
        end
    end

    def display_info(input)
        fp = @foodplace[input-1]
        puts <<~HEREDOC
            Address: #{fp["location"]["display_address"]}
            Rating: #{fp["rating"]}
            Link: #{fp["url"]}
            HEREDOC
    end


    def input
        input == get.chomp
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
            begin
        else
           puts "Sorry, wrong input. Please try again"
        end
    end
end