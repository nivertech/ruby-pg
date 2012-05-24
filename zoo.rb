def sum(x)
  x.reduce {|x,y| x + y}
end

class Animal
  attr_reader :gender
  def initialize(gender)
    @gender = gender
  end
end

class Zebra < Animal
  def legs()
    4
  end
  def initialize(gender)
    super gender
  end
end

class Snake < Animal
  def legs()
    0
  end
  def initialize(gender)
    super gender
  end
end

class Cage
  attr_accessor :animals
  def initialize(animals)
    self.animals = animals
  end
end

class Zoo
  attr_accessor :cages
  def initialize(cages)
    self.cages = cages
  end
  def animal_count
    sum(self.cages.map {|x| x.animals.length })
  end
  def cage_count
    self.cages.length
  end
end

z = Zoo.new([Cage.new([Zebra.new(:male), Zebra.new(:female), Zebra.new(:male)]),
             Cage.new([Snake.new(:female), Snake.new(:male), Snake.new(:female), Snake.new(:female), Snake.new(:female)]),
             Cage.new([Zebra.new(:male), Snake.new(:male)])])

puts z.animal_count.inspect
puts z.cage_count
