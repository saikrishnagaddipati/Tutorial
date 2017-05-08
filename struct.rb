What is a struct.

In general if we want to create a class and use attributes we use the below code

class Game
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

variable1 = Game.new("NFL")
variable2 = variable1.name
puts variable2

#Instead of defining the class name attributes and initializing. We can just use structs to represent the above code in a short way.

Game = Struct.new(:name)

variable1 = Game.new("NFL")
variable2 = variable1.name
puts variable2

#so when to use a struct?
# when the data your are going to use is closley related we can user structs instead of Hash/Araay. 
