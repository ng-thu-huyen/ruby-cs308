#Getter 
# define a class
class Person
   # constructor method
   def initialize(n,a)
      @name, @age = n, a
   end

   # accessor methods
   def printName
      @name
   end

   def printAge
      @age
   end
end

# create an object
person = Person.new("Huyen", 21)

# use accessor methods
x = person.printName()
y = person.printAge()

puts "Name of the person is : #{x}"
puts "Age of the person is : #{y}"

#Setter
# define a class
class Person
   # constructor method
   def initialize(n,a)
      @name, @age = n, a
   end

   # accessor methods
   def geName
      @name
   end
   def getAge
      @age
   end

   # setter methods
   def setName=(value)
      @name = value
   end
   def setAge=(value)
      @age = value
   end
end

# create an object
person = Person.new("Huyen", 21)

# use setter methods
person.setName = "Minh"
person.setAge = 23

# use accessor methods
x = person.getName()
y = person.getAge()

puts "Name of the person is : #{x}"
puts "Age of the person is : #{y}"

# to_string method
class Person
   # constructor method
   def initialize(n,a)
      @name, @age = n, a
   end
   # define to_s method
   def to_s
      "(n:#@name,a:#@age)"  # string formatting of the object.
   end
end

# create an object
person = Person.new("Hung", 1997)

# to_s method will be called in reference of string automatically.
puts "String representation of person is : #{person}"

#Inheritance
# define a class
class Person
   # constructor method
   def initialize(n,a)
      @name, @age = n, a
   end
   def to_s
      "(n:#@name,a:#@age)"  # string formatting of the object.
   end
end

# define a subclass
class BigPerson < Person

   # add a new instance method
   def printIdenity
      puts "(n:#@name,a:#@age)"
   end
end

# create an object
person = BigPerson.new("Thu", 1975)

# print the area
person.printIdentity()

#Inheritance
# define a class
class Person
   # constructor method
   def initialize(n,a)
      @name, @age = n, a
   end
   def to_s
      "(n:#@name,a:#@age)"  # string formatting of the object.
   end
end

# define a subclass
class BigPerson < Person

   # add a new instance method
   def printIdenity
      puts "(n:#@name,a:#@age)"
   end
end

# create an object
person = BigPerson.new("Thu", 1975)

# print the area
person.printIdentity()

#Method overloading
class Test
    def self.sum(a,b)
        puts(a+b)
    end
    def self.sum(a,b,c)
        puts(a+b+c)
    end
      
end
Test.sum(3,5) #error
Test.sum(3,5,7)

class Test
    def self.display(*args)
        case args.size
            when 1
                puts "1: Hello #{args[0]}"
            when 2
                puts "2: Hello #{args[0]} #{args[1]}"
            when 3
                puts "3: Hello #{args[0]} #{args[1]} Welcome to #{args[2]} language."
        end
    end
end 
Test.display"World" 
Test.display"World", "Hope you doing great."
Test.display"World", "Hope you doing great.", "Ruby"

class Test
    def display(*args)
        case args.size
            when 1
                puts "1: Hello #{args[0]}"
            when 2
                puts "2: Hello #{args[0]} #{args[1]}"
            when 3
                puts "3: Hello #{args[0]} #{args[1]} Welcome to #{args[2]} language."
        end
    end
end 
  
ob1 = Test.new
ob2 = Test.new
ob3 = Test.new
ob1.display"World" 
ob2.display"World", "Hope you doing great."
ob3.display"World", "Hope you doing great.", "Ruby"
