#require "cli_project_beer/version"

class CLI 

  attr_accessor :input 

  def initialize 
    @input = ""
  end 

  def run 
    welcome
    #sleep (1)
    main_menu

  end 

  def welcome
    puts "Welcome to Brewdogs' Assistant!".black.on_green
    puts "Let's Party!".black.on_green
  end 

  def main_menu
    prompts
    while input.downcase != "q" do 
      case input.downcase 
      when "y"
        Beer.random_beer
      when "b"
        Beer.beer_list
      else 
        puts "Invalid entry, try again"
      end 
      prompts 
    end 
  end 

  def prompts 
    puts ""
    puts Rainbow("Hit 'Y' for Brewer's Pick").darkturquoise
    puts ""
    puts ""
    puts Rainbow("Hit 'B' to check out the entire selection").mediumturquoise
    get_input
  end 

  def get_input
    self.input = gets.chomp
  end 
end 
