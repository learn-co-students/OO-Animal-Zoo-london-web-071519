class Zoo
attr_reader :name, :location
attr_accessor
@@all = []
    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    # Zoo#animals should return all the animals that a specific instance of a zoo has.
    def animals
        Animal.all.select{|animal| animal.zoo_name == @name}
    end

    #  Zoo#animal_species should return an array of all the species (as strings) of the animals in the zoo. However, if you have two dogs, it should only return one "Dog" string (aka an unique array).
    def animal_species
        animals.map{|animal| animal.species}.uniq
    end

    # Zoo#find_by_species should take in an animal's species as an argument and return an array of all the animals in that zoo, which are of that species.
    def find_by_species(species)
        animals.select{|animal| animal.species == species}
    end

    # Zoo#animal_nicknames should return an array of all the nicknames of animals that a specific instance of a zoo has.
    def animal_nicknames 
        animals.map{|animal| animal.nickname}
    end

    # Zoo.find_by_location should take in a location as an argument and return an array of all the zoos within that location.
    def self.find_by_location(location)
        @@all.select{|zoo| zoo.location == location }
    end

end