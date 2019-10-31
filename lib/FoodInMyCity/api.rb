class FoodInMyCity::API
    def fetch
        key = "spIEc1QEPOhfy7zH7VYJg0ftdvV713KctXM80RHb8qDMf2YPxb_riQZmKNjdly3D_q6JYIQon50dHML63DNi2rVDDJv2D4vk2RcC0Hy9SEiVCvln0PnunWu4kOu4XXYx"
        url = "https://api.yelp.com/v3/businesses/search?term=restaurant&location=paloalto&limit=20"
        response = HTTParty.get(url, headers: {'Authorization' => "Bearer #{key}"})
        response.parsed_response
        response["businesses"].each do |fp|
            
            name = fp["name"]
            address = fp["location"]["display_address"]
            rating = fp["rating"]
            link = fp["url"]            
                
            #have all info i want to grab, need to put it all together in hash to be easier once instance of food
                #place is created

            fp_hash ={
                :name => name, 
                :address => address
                :rating => rating
                :link => link
            }
            
            FoodInMyCity::Foodplaces.new(fp_hash)
        end
    end 
end   

