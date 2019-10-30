class FoodInMyCity::API
    def fetch
         key = "spIEc1QEPOhfy7zH7VYJg0ftdvV713KctXM80RHb8qDMf2YPxb_riQZmKNjdly3D_q6JYIQon50dHML63DNi2rVDDJv2D4vk2RcC0Hy9SEiVCvln0PnunWu4kOu4XXYx"
         url = "https://api.yelp.com/v3/businesses/search?term=restaurant&location=paloalto&limit=20"
         response = HTTParty.get(url, headers: {'Authorization' => "Bearer #{key}"})
         response.parsed_response
         response["id"].each do |fp|
            name = fp["name"]
            address = fp["location"]["display_address"]
            rating = fp["rating"]
            link = fp["url"]
            FoodInMyCity::Foodplaces.new(name, addrress, rating, link)
            end
        end
    end 
end
