#print "Hello World" on different line
puts "Hello World"
puts "Hello World"
#print "Hello World" on the same line
print "Hello World"
print "Hello World"

#creates variables
#int
var = 10
puts var
#string
my_string = "Hello World"
puts my_string
#floating-point number
float_test = 0.5
puts float_test
#add int to float (prints float)
puts var + float_test 
#divide int by float (prints float)
puts var / float_test
#boolean
bool_test = true
puts bool_test
#array
digits = [0,1,2,3,4,5,6,7,8,9]
puts digits
#put different data types in the same array or list (possible)
array_mix = [1, 2, "hello"]
puts array_mix
#hash
dictionary = { "one" => "mot", "two" => "hai", "three" => "ba" }
puts dictionary["one"]

#convert data type
puts var.to_s + my_string

#dynamically typed
x = 7.5
x = "hello"
puts x #prints hello

#strongly typed
x = "7.5"
y = x + "hello" 
puts y #prints "7.5hello"
#z = x + 7.5 
#puts z #Ruby cannot do this

#addresses
x = 1
y = 1
puts x.object_id == y.object_id #TRUE

#binding
a = [1, 2, 3, 4, 5, 6]
b = a
a.append(10)
puts b #[1, 2, 3, 4, 5, 6, 10]

#Write (or try to emulate, if your language doesn’t have them) different kinds of loops: while, do/while, for, foreach
#while loop
$today = 2
$Saturday = 7
while $today < $Saturday do
    puts("while-loop", $today)
    $today +=1
end

#while modifier
$today = 2
$Saturday = 7
begin
    puts("whil_mod", $today)  
    $today +=1
end while $today < $Saturday 

#until
$today = 2
$Saturday = 7
until $today >= $Saturday do
    puts("until-loop", $today)
    $today +=1
end

#until modifier
$today = 2
$Saturday = 7
begin
    puts("until-mod", $today)
    $today +=1
end until $today > $Saturday

#Write a function that takes in two numbers, multiplies them, and returns the output
def multiple (var1, var2)
    return var1*var2
end
puts("mutiple", multiple(5,10))
#Write a recursive function
def Factorial(number)
    # Base Case:
    if (0..1).include?(number)
    	return 1
    else
    #Recursive call:
        number * Factorial(number - 1)
    end
end
# Calling the method:
Factorial(6)

#Write a function that takes in a string (or your language's equivalent) and splits it into two strings, then returns both strings
def Split(string)
    puts (string.split(/ /, 2))
end
Split("Hello world")

#Call your functions and save the results of the function calls in variables.
puts (recursive = Factorial(6))
#Write a function that tests whether your language is pass-by-reference or pass-by-value.
#primitive
val = "Hello"
def check_pass(arg)
  arg = "Hi"
end
check_pass(val)
puts val # => Hello (pass by value)
#non-primivtives
def append(array)
    array << 1
end
array = [0]
append(array)
print(array) #[0,1] pass reference by value
  
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
