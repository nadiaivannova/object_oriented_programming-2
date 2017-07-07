class System

  @@all_bodies = []
  @@total_mass = 0

  def add(name)
    @@all_bodies << name
  end

  def all_bodies
    return @@all_bodies
  end

  def total_mass
    weight = 0
    @@all_bodies.each do |body|
      weight = body.mass
      @@total_mass = @@total_mass + weight
    end
      puts "Total mass is #{@@total_mass}."
    end
  end

class Bodies

  attr_reader :name, :mass

  def initialize(name, mass)
    @name = name
    @mass = mass
  end

end

class Planet < Bodies
end

class Star < Bodies
end

class Moon < Bodies
end

milky_way = System.new

earth = Planet.new("earth", 1000 )

milky_way.add(earth)


north = Star.new("north", 4000)

milky_way.add(north)


luna = Moon.new("luna", 500)

milky_way.add(luna)


milky_way.total_mass
