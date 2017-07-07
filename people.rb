class Person

attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}"
  end
end


class Instructor < Person

  def teach
    puts "Everything in Ruby is an Object"
  end

end


class Student < Person

  def learn
    puts "I get it!"
  end
end

i = Instructor.new("Christina")
s = Student.new("Chris")

s.greeting
i.greeting

i.teach
s.learn

# s.teach
#  there is no teach metohod for student
