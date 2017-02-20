class Rez::Player
     attr_accessor :name,:age,:position

     @@all = []

     def initialize(name,age,position)
        @name=name
        @age=age
        @position=position
        @@all << self
     end


     def self.add_players
 		marcelo = self.new("Marcelo", 50, "Defense"),
        ali = self.new("Ali", 50, "Defense"),
        gabe = self.new("Gabe", 50, "Defense"),
  
        rezan = self.new("Rezan", 18, "Forward"),
        mendel = self.new("Mendel", 23, "Goalie")
     end

     def self.all
     	@@all
     end
end