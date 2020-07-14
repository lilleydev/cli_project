class Beer
  attr_accessor :name, :food_pairing, :description, :brewers_tips, :abv

  @@all = []

  def initialize(name, food_pairing, description, brewers_tips, abv)
    @name = name
    @brewers_tips = brewers_tips
    @food_pairing = food_pairing
    @description = description
    @abv = abv
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

  def self.abv_content
    all.each do |beer_instance|
      beer_instance.abv
    end 
  end 

  def self.beer_description
    all.map do |beer_instance|
        beer_instance.description
    end 
  end 

  def self.random_beer
    puts Rainbow("__________________________________________").mediumorchid
    puts ""
    puts Rainbow("Try this! #{beers.sample}").teal
    puts Rainbow("__________________________________________").mediumorchid
  end

  def self.beer_list 
    all.each.with_index(1) do |beer_instance, x|
     puts Rainbow("#{x}. #{beer_instance.name}, #{beer_instance.abv}%").mediumspringgreen
    end
  end 

  def self.beer_foods
    all.map do |beer_instance|
    beer_instance.food_pairing
    end 
  end

  def self.foods_selection
    all.each.with_index(1) do |beer_instance, index|
    puts "#{index}. #{beer_instance.food_pairing}"
    end 
  end

  def self.desserts
    foods_flat = []
        all.each do |beer_instance|
          foods_flat << beer_instance.food_pairing
        end 
       all_foods = []
       all_foods = foods_flat.flatten 
     desserts = []
     desserts = all_foods.grep(/cake|brownie|brittle|chocolate|brittle|ice cream|tart|pie/)
     actual_desserts = []
     actual_desserts = desserts.delete_if {|option| option.include?("crab")}
     puts "Here are some sweet treats"  
     puts "" 
     actual_desserts.each.with_index(1) do |dessert, index|
            
            puts "#{index}. #{dessert}"
            puts ""
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
