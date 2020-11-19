class Dog

  attr_reader :name               #can't change it's name 
  attr_accessor :owner, :mood     #can change it's owner & mood 

  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end

end