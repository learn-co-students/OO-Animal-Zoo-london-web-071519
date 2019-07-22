require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

columbia = Zoo.new("The Main Zoo", "Columbia, MD")
eldersburg = Zoo.new("The Second Zoo", "Eldersburg, MD")
arlington = Zoo.new("The Third Zoo", "Arlington, VA")
another_in_columbia = Zoo.new("Second in Columbia", "Columbia, MD")


jerry = Animal.new("Rat", 4, "Jerry")
tom = Animal.new("Cat", 5, "Tom")
tony = Animal.new("Cat", 260, "Tony")
simba = Animal.new("Cat", 300, "Simba")
zazu = Animal.new("Bird", 10, "Zazu")

columbia.add_animal(tony)
columbia.add_animal(simba)
eldersburg.add_animal(jerry)
eldersburg.add_animal(tom)
arlington.add_animal(zazu)

binding.pry
puts "done"
