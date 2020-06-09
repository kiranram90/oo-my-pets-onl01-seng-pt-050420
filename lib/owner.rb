class Owner
  
  @@count = 0
  @@all = []
  
  attr_reader :name, :species
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @@count += 1
    
  end  
  
  def say_species 
    "I am a #{@species}."
  end
  
  def self.all 
    @@all
  end
  
  def self.count 
    @@count 
  end
  
  def self.reset_all 
    @@all = []
    @@count = 0
  end
  
  def cats 
    Cat.all.each do |cats|
    cats.owner == self.name
  end

  end
    
end