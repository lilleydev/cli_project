class Beer
  attr_accessor :name, :city, :state, :food_pairing, :description, :brewers_tips, :hops, :malt, :abv, :input

  def initialize(attr_hash)
    @name = attr_hash[:name]
    @brewers_tips = attr_hash[:brewers_tips]
    @food_pairing = attr_hash[:food_pairing]
    @description = attr_hash[:description]
    @ingredients = attr_hash[:ingredients]
    @hops = attr_hash[:hops]
    @malt = attr_hash[:malt] 
    @abv = attr_hash[:abv]
    @@all << self
  end 

  def self.all
    @@all 
  end

  def self.beers 
    all.map do |beer_instance|
      beer_instance.name
    end 
  end 

  def self.beer_description
    all.map do |beer_instance|
        beer_instance.description
    end 
  end 

  def self.random_beer
    #rando = beers.sample
    puts ""
    puts Rainbow("Try this! #{beers.sample}").teal
    puts ""
  end

  def self.beer_list 
    beers.each.with_index(1) do |beer, x|
        puts Rainbow("#{x}. #{beer}").mediumspringgreen  
    end

end 



def self.pick_description
    beer_list
    puts ""
    puts Rainbow("** Type the number you want to see more on **").springgreen.italic
    num = gets.chomp.to_i 
    num -= 1
    puts ""
    puts Rainbow("#{beers[num]}").plum
    puts ""
    puts Rainbow("      #{beer_description[num]}").violet
    puts ""
    puts Rainbow("** Hit 'y' if you want to see what goes great with that. **").palevioletred.italic
    food = gets.chomp 
    if food.downcase == "y"
        puts ""
        puts beer_foods[num]
        puts ""
    else 
        "Invalid Input"
    end 
     
end 



end
