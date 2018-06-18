class Dog < ActiveRecord::Base

  attr_accessor :name, :breed, :age
  @@all = []

  def initiatize(args)
    @name = args[:name]
    @breed = args[:breed]
    @age = args[:age]
  end

  def self.all
    save
    @@all
  end

  def save
    @@all << self
  end

end
