class Dog < Sinatra::Base

  attr_accessor :name, :breed, :age
  @@all = []

  def initiatize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
  end

  def self.all
    save
    @@all
  end

  def save
    @@all << self
  end

end
