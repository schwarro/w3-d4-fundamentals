class Person

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{name}"
  end

  def Student < Person
    def learn
      puts "I get it"
    end
  end

  def Instructor < Person
    def teach
      puts "Everything in Ruby is an Object!"
    end
  end

end

nadia = Instructor.new(nadia)
chris = Student.new(chris)

nadia.teach
chris.learn
