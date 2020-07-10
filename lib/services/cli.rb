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
      else 
        puts "Invalid entry, try again"
      end 
      prompts 
    end 
  end 

  def prompts 
    puts ""
    puts "Hit 'Y' for Brewer's Pick"
    puts ""
    get_input
  end 

  def get_input
    self.input = gets.chomp
  end 
end 
