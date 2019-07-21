require "pry"
class Animal

    attr_accessor :zoo    
    attr_writer :weight     
    attr_reader :species, :nickname 

    @@all = []

    def initialize(species, nickname, weight)
        @species = species 
        @nickname = nickname
        @weight = weight
        @@all << self 
    end 

    def species
        @species
    end 

    def nickname
        @nickname
    end 

    def zoo 
        @zoo 
    end 

    def weight 
        @weight
    end 

    def self.all 
        @@all 
    end 

    def self.find_by_species(species)
        self.all.select {|animal_species| animal_species.species == species}
    end 

    def self.zoo 
        self.zoo 
    end 

end


