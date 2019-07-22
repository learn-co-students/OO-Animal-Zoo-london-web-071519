class Animal

  @@all = []

  attr_reader :species, :nickname
  attr_writer :weight, :zoo

  def initialize(species:, weight:, nickname:, zoo:)
    @species = species
    @weight = weight
    @nickname = nickname
    @zoo_name = zoo

    @@all << self
  end

  def self.nickname
    @nickname
  end

  def self.weight
    @weight
  end

  def self.species
    @species
  end

  def self.all
    @@all
  end

  def zoo
    Zoo.all.find{|zoo| zoo.name == @zoo_name}
  end

  def self.find_by_species(species)
    @@all.select{|animal| animal.species == species}
  end

end
