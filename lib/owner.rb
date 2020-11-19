require 'pry'

class Owner
  
  attr_reader :name, :species

   # all returns all instances of Owner that have been created
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self           
    # all returns all instances of Owner that have been created
    # therefore needs to shove self into @@all array above
  end

  def say_species
    "I am a #{@species}."
  end

  # all returns all instances of Owner that have been created
  def self.all
    @@all
  end

  def self.count 
    @@all.size 
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    all_cats = Cat.all.select do | cats |
      cats.owner == self 
    end
  end

  def dogs
    all_dogs = Dog.all.select do | dogs |
      dogs.owner == self
    end
  end

  def buy_cat(name) 
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end
    
  def walk_dogs
    self.dogs.each do | dog |
    dog.mood = "happy"
  end
end

def feed_cats
  self.cats.each do | cat |
    cat.mood = "happy"
  end
end

def sell_pets

  self.cats.each do | cat |
    cat.mood = "nervous"
    cat.owner = nil
  end

  self.dogs.each do | dog | 
    dog.mood = "nervous"
    dog.owner = nil
  end
end

def list_pets 
  "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
end


end
