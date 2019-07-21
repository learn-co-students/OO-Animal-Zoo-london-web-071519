class Zoo

    attr_accessor :animals 
    attr_reader :name, :location 

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self 
        @animals = []
    end 

    def self.all 
        @@all 
    end 

    def name=(name)
        @name = name 
    end 

    def location=(location)
        @location = location 
    end 

     def add_animals(animal)
         animals << animal 
         animal.zoo = self    
     end 

    def animals 
        @animals 
    end     

    def animal_species
        species_array = []
        @animals.each do |info|
           species_array << info.species
        end
        species_array.uniq
    end  

    def animal_nicknames
        nicknames_array = []
        @animals.each do |info|
           nicknames_array << info.nickname
        end
       nicknames_array
    end 

##I am not sure if find_by_species is returning what I want it to return per the README
    def find_by_species(species)
        animals.select {|animal| animal.species == species} 
    end 

    def self.find_by_location(location)
        self.all.select { |zoo_location| zoo_location.location == location}
    end 

end
