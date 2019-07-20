class Zoo

    attr_accessor :location
    attr_reader :name

    @@all = []
    
    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def all_animals
        Animal.all
    end

    def animals
        all_animals.select do |animal|
            animal.zoo == self
        end
    end

    def animal_species
        species_array = []
        animals.map do |animal|
            species_array << animal.species
        end
        species_array.uniq
    end
    
    def find_by_species(animal_species)
        self.animals.select do |animal|
            animal.species == animal_species
        end
    end

    def animal_nicknames
        nicknames_array = []
        self.animals.each do |animal|
            nicknames_array << animal.nickname
        end
        return nicknames_array
    end

    def self.find_by_location(match_location)
        self.all.select do |zoo|
            zoo.location == match_location
        end
    end 

    


end
