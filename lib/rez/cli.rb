require 'colorize'
class Rez::Cli
    def run
        puts"********************************".red
  puts "                             "
  puts "      Welcome to our position!      "
  puts "                             "
puts"********************************".red
        Rez::Player.add_players
        players = Rez::Player.all
        players.each do |i|
            puts "Name: #{i.name}, Age: #{i.age}, Position: #{i.position}."
        end


    end 
end
