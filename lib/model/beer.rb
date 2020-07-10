class Beer
  attr_accessor :name, :city, :state, :food_pairing, :description, :brewers_tips, :hops, :input

  def initialize(name, food_pairing, description)
    @name = name
    #@brewers_tips = brewers_tips
    @food_pairing = food_pairing
    @description = description
    #@ingredients = ingredients
    @@all << self
  end 

  def self.all
    @@all 
  end
   
end
