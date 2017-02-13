class Player
     attr_accessor :name,:age,:position
     def initialize(name,age,position)
        @name=name
        @age=age
        @position=position

     end
end
class Cli
    def run
        players = [
            marcelo = Player.new("Marcelo", 50, "Defense"),
            ali = Player.new("Ali", 50, "Defense"),
            gabe = Player.new("Gabe", 50, "Defense"),
            shereen = Player.new("Shereen", 29, "Forward"),
            rezan = Player.new("Rezan", 18, "Forward"),
            mendel = Player.new("Mendel", 23, "Goalie")
        ]
        players.each do |i|
            puts "Name: #{i.name}, Age: #{i.age}, Position: #{i.position}."
        end


    end
end
