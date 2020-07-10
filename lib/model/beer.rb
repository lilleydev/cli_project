class Beer
  attr_accessor :name, :city, :state, :food_pairing, :description, :brewers_tips, :hops, :malt, :input

  def initialize(name, food_pairing, description, brewers_tips, hops)
    @name = name
    @brewers_tips = brewers_tips
    @food_pairing = food_pairing
    @description = description
    @ingredients = ingredients
    @hops = hops
    @malt = malt 
    @@all << self
  end 

  def self.all
    @@all 
  end

end
