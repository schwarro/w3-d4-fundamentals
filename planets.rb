class System

  def initialize
    @bodies = []  #=> give attribute bodies as an empty array
  end

  def add(body)
    @bodies << body  #=>give system an instance method called add
  end

   #=> instance method to add up the mass of all bodies in bodies and return it
   def total_mass
     mass = 0
     @bodies.each do |body|
       mass += body.mass
     end
     return mass
   end

end

class Body < System #=> common traits for planets, stars and moons. they all have a mass and a name
  def initialize(name, mass)
    @name = name
    @mass = mass
  end
end

class Planets < Body
  attr_accessor :mass, :day, :year
  def initialize(name, mass, day, year)
    @day = day
    @year = year
    @name = name
    @mass = mass
  end
end

class Stars < Body
  attr_accessor :mass, :type
  def initialize(name, mass, type)
    @type = type
    @name = name
    @mass = mass
  end
end

class Moons < Body
  attr_accessor :mass, :month
  def initialize(name, mass, month)
    @month = month
    @name = name
    @mass = mass
  end

  def planet(name, mass, day, year)
    @planet = Planet.new(name, mass, day, year)
  end

end

sys1 = System.new #=> creates new system
sun = Stars.new("the sun", 1000, "g-type")
earth = Planets.new("Earth", 1000, "24", "365")
moon = Moons.new("Moon", 1000, "1")
sys1.add(sun)
sys1.add(earth)
sys1.add(moon)
p sys1
p sys1.total_mass
