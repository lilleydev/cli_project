#require "cli_project_beer/version"

class CLI 

  attr_accessor :input 

  def initialize 
    @input = ""
  end 

  def run 
    welcome
    age_check
    sleep (1)
    main_menu

  end 
 
  def welcome
    puts ""
    puts "       Welcome to Brewdogs' Assistant!     ".black.on_green
    puts "                Let's Party!               ".black.on_green
    puts "  "
  end 

  def main_menu
    prompts
    while input.downcase != "q" do 
      case input.downcase 
      when "y"
        Beer.random_beer
      when "b"
        Beer.beer_list
      when "d"
        Beer.pick_description
      when "t"
        puts Beer.desserts
      else 
        puts "Invalid entry, try again"
      end 
      prompts 
    end 
  end 

  def prompts 
    puts Rainbow("_____________________________________________________").skyblue
    puts ""
    puts Rainbow("            Hit 'Y' for Brewer's Pick").darkturquoise
    puts ""
    puts Rainbow("      Hit 'B' to check out the entire selection").mediumturquoise
    puts ""
    puts Rainbow("         Hit 'D' to get a brew description").turquoise
    puts ""
    puts Rainbow("        Hit 'T' if you're looking for sweets").paleturquoise
    puts ""
    puts Rainbow("            Uber here? 'Q' to exit").turquoise
    puts Rainbow("_____________________________________________________").skyblue

    get_input
  end 

  def get_input
    self.input = gets.chomp
  end 

  def age_check
    puts "Please enter your age:"
    age = gets.chomp.to_i
    
    if age >= 21 and age < 130
      puts ""
      puts Rainbow("Party on!").aqua
    elsif age < 21 and age > 0
      puts ""
      puts Rainbow("You can check out these instead:").aqua
      puts ""
      puts Beer.desserts 
      exit 
    else 
      puts ""
      puts Rainbow("Invalid Input").red
      puts ""
      age_check
    end  
  end 

end 
