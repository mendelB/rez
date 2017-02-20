require_relative '../rez/player'
require 'colorize'
class Cli
    def run
        puts"********************************".red
  puts "                             "
  puts "      Welcome to our position!      "
  puts "                             "
puts"********************************".red
        players = [
            marcelo = Player.new("Marcelo", 50, "Defense"),
            ali = Player.new("Ali", 50, "Defense"),
            gabe = Player.new("Gabe", 50, "Defense"),
      
            rezan = Player.new("Rezan", 18, "Forward"),
            mendel = Player.new("Mendel", 23, "Goalie")
        ]
        players.each do |i|
            puts "Name: #{i.name}, Age: #{i.age}, Position: #{i.position}."
        end


    end 
end
