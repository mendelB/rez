require 'colorize'
class Rez::Cli
    def run
        puts"********************************".red
  puts "                             "
  puts "      Welcome to our position!      "
  puts "                             "
puts"********************************".red
        Rez::PlayerScraper.scrape_players
        players = Rez::Player.all
        players.each do |i|
            if i.number == ""
                puts "Name: #{i.name}, Position: #{i.position}."
            else 
                puts "Name: #{i.name}, Number: #{i.number}, Position: #{i.position}."
            end
        end


    end 
end
