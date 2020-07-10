class BeerAPI

    BASE_URL = "https://api.punkapi.com/v2/beers"

    def get_beer

        beer_info = HTTParty.get(BASE_URL)

        beer_info.each do |beer_info_hash|
            #binding.pry
            Beer.new(beer_info_hash["name"], beer_info_hash["food_pairing"], beer_info_hash["description"], beer_info_hash["brewers_tips"], beer_info_hash["abv"])
            
        end 
            
        #beer_info_hash["ingredients"]["malt"], beer_info_hash["ingredients"]["hops"]
        

    end 

     
end 


