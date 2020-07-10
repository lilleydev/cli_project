class BeerAPI

    BASE_URL = "https://api.punkapi.com/v2/beers"

    def get_beer

        beer_info = HTTParty.get(BASE_URL)

        beer_info.each do |beer_info_hash|
            Beer.new(beer_info_hash["name"], beer_info_hash["food_pairing"], beer_info_hash["description"])
            binding.pry
        end 
            
        

    end 

     
end 