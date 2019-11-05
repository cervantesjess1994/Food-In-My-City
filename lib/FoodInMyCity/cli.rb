class FoodInMyCity::CLI
    
    def call
        FoodInMyCity::API.new.fetch
            run
    end

    def run
        puts "Welcome to Palo Alto, home of El Palo Alto!"
        display_fp_names
        get_info
    end

    def display_fp_names
        @foodplace = FoodInMyCity::Foodplaces.get_names.each.with_index do |fp,i|
            puts "#{i+ 1}. #{fp}"
        end
    end

    def get_info
        #get details then dispay info method 
        puts "Enter the number corresponding to the food place you'd like to visit."
        num = gets.chomp
            if valid?(num, @foodplace)
                display_info(num.to_i)
            else
                get_info
            end
        end


    def display_info(input)
        fp = FoodInMyCity::Foodplaces.all[input-1] #-1 snce input would be index+1
        puts <<~HEREDOC
            Address: #{fp.address}
            Rating: #{fp.rating}
            Link: #{fp.link}
            HEREDOC
        finished
    end

    def valid?(input,array)
        if input == "done"
            finished
        end
        input.to_i.between?(1,array.length) 
    end

    def finished
        puts "All done? Enter 'done' to exit"
        input = gets.chomp
            if input == "done"
                puts "Thank you, come again!"
                exit
            elsif input == "no"
                run
            else
                puts "Sorry, wrong input. Please try again"
                finished
            end
    end
end