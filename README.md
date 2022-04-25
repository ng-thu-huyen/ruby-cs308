# ruby-cs308
This repo is for learning Ruby in Programming Languages - CS308 at Fulbright University Vietnam\
Author: Nguyen Thu Huyen

## Language overview and setup
**Ruby is an interpreted, high-level, general-purpose programming language**
### History
Ruby was created in the mid-1990s by Yukihiro "Matz" Matsumoto in Japan with the aim of being the first genuine object-oriented, easy-to-use scripting programming language. Ruby was born out of Matz’s desire to come up with a scripting language that was more powerful than Perl and more object-oriented than Python.\
Ruby is used for multi purposes, namely building desktop applications, static websites, data processing services, and even automation tools. It’s also used for web servers, DevOps, and web scraping and crawling. And with Rails application framework, you can even do database-driven web applications.\
To learn Ruby, I will use 2 main sources: 
1. Ruby Programming Language - Full Course by freeCodeCamp.org
2. The Well-Grounded Rubyist by David A. Black and Joseph Leo III 
### Getting started
#### Installation on Windows
First, download Ruby installer [here](https://rubyinstaller.org/) \
You can write Ruby code in any text editor you want. It can be simpe like NotePad or TextEdit or some environments built only for Ruby ([Atom](https://atom.io/)). To utilize the text editor I already installed, I will continue using [Visual Studio Code](https://code.visualstudio.com/). \
If you also use VSCode, install Ruby extension to start your first Ruby program.
#### "Hello World" program
Type in the code below
```
#print "Hello World" on different line
puts "Hello World"
#print "Hello World" on the same line
print "Hello World"
```
The 2 lines of code both print "Hello World". However, the difference between **put** and **print** is that while **put** prints out the word in the string and a new line afterward, **print** prints things out on the same line.\
The output is
```
Hello World
Hello World
```
#### Write comments in Ruby
To write comments in Ruby, you use **#**

## Names, Types and Binding
Refer to the [file](https://github.com/ng-thu-huyen/ruby-cs308/blob/main/testvariables.rb) for code samples
### Naming
Ryby is a case sensitive language.\
Variable names in Ruby can be created from alphanumeric characters and the underscore _ character and should be written in snake_case (community standard).\
A variable cannot begin with a number.\
Variable names cannot begin with a capital letter. If an identifier begins with a capital letter, it is considered to be a constant in Ruby.\
Class names should be written in CamelCase (community standard).\
Methods should be written in snake_case (community standard).

#### Keywords
The below keywords cannot be used for naming variables or constants in Ruby.
BEGIN	| END |	alias |	and |	begin |	break |	case | class |	def
--- | --- | --- | --- |--- |--- |--- |--- |--- 
module |	next |	nil |	not |	or |	redo |	rescue |	retry |	return
--- | --- | --- | --- |--- |--- |--- |--- |--- 
elsif	| end |	false | ensure |	for |	if |	true |	undef |	unless
--- | --- | --- | --- |--- |--- |--- |--- |--- 
do |	else |	super |	then |	until |	when |	while |	defined? |	self

### Types
```
#creates variables
#int
var = 10
#string
my_string = "Hello World"
#floating-point number
float_test = 0.5
#boolean
bool_test = true
#array
digits = [0,1,2,3,4,5,6,7,8,9]
#hash
dictionary = { "one" => "mot", "two" => "hai", "three" => "ba" }
puts dictionary["one"]
```
#### Ruby is dynamically typed
```
x = 7.5
x = "hello"
puts x #prints hello
```
#### Ruby is strongly typed
```
x = "7.5"
y = x + "hello" 
puts y #prints "7.5hello"
z = x + 7.5 
puts z #Ruby cannot do this
```
#### Mutable and immutable variables
##### Mutable
String\
Array\
Hash

##### Immutable
Integer\
Float\
Boolean\
Symbol

#### Explicitly and implicitly type conversions
There are several pairs of type coercions methods in Ruby:\
to_i and to_int;\
to_s and to_str;\
to_a and to_ary;\
to_h and to_hash.\
Shorter version is explicit conversion. Longer version is implicit conversion.\
```
var = 25
my_string = "hello"
puts var.to_s + my_string #prints 25hello
```
### Operators
Operators | Symbols
--- | ---
Ruby Arithmetic Operators | +, -, \*, \/, \**, \%
--- | ---
Ruby Comparison Operators| ==, !=, >, <, >=, <=>, ===, .eql?, equal?
--- | ---
Ruby Assignment Operators | =, +=, -=, \*=, \/=, \**=, \%=
--- | ---
Ruby Bitwise Operators | &, |, ^, ~, >>, <<
--- | ---
Ruby Logical Operators | and, or, &&, ||, !, , not
--- | ---
Ruby Ternary Operator | ?: (If Condition is true ? Then value X : Otherwise value Y)
--- | ---
Ruby Range Operators | .. (Creates a range from start point to end point inclusive), ... (Creates a range from start point to end point exclusive)

### Addresses and binding
In Ruby, a variable name is bound to a memory address, and different variables with the same value are bound to the same memory reference. 
```
x = 1
y = 1
puts x.object_id == y.object_id #TRUE
a = [1, 2, 3, 4, 5, 6]
b = a
a.append(10)
puts b #[1, 2, 3, 4, 5, 6, 10]
```

## Selection Control Structures
### Boolean values
``true`` and ``false`` are native boolean values in Ruby. ``true`` presents truth while ``false`` presents not true.\
``nil`` is a special value in Ruby, which means nothing. It either does not exist or could not be found. (Note: 0 and empty strings, arrays, hashes are not ``nil``)\
Every object in Ruby has a boolean value. If they are ``false`` and ``nil``, they are falsey. Others are truthy.

### Conditional statements
#### If statement
```
if (condition)
  #statements
end 
```
If you find the condition true, do something, otherwise do something else.

#### If else statement
```
if (condition)
  #instructions
else
  #instructions
end
```
This indicates what should happen next (in ``else``) if the condition is false.

#### short if statement
```
result = (condition) ? (expression-if-true) : (expression-if-false)
```
Similar to If else statement but saves more spaces. The statement is recommended in small tasks.

#### If else if statement
```
if expression
  #code block.
elsif  expression2
  #code block.   
elsif  expression3
  #code block.   
else
  #code block
end 
```
This statement is used when we have more than 1 statement. If the condition is false, the pointer will jump to the next ``elsif`` and so on.

#### Unless
```
unless condition
  #code block
end
```
Contradicted to ``If``, if you find the condition is false, the code block is executed.

#### Case statement
```
case (variable name)
when (condition)
  #statements
when (condition)
  #statements
else
  #statements
end
```
The statement can be interchangable with ``if..elsif..end``
![alt text](https://media.geeksforgeeks.org/wp-content/uploads/ruby-case.jpg) \
We do not need to use ``break`` to get out of case statements in Ruby and could not use ``next`` (``continue`` in some other languages) to have all conditions evaluated.
## Decision making in selection control statement 
### If statement
![alt text](https://media.geeksforgeeks.org/wp-content/uploads/rubyif-statement.png) 
### If else statement
![alt text](https://media.geeksforgeeks.org/wp-content/uploads/if-else-statementruby.jpg) 
### If else if statement
![alt text](https://media.geeksforgeeks.org/wp-content/uploads/if-else-if-statementruby.jpg) 

### Short-circuit evaluation
Ruby uses short-circuit evaluation. \
When the first argument of the AND function evaluates to false, the overall value must be false; and when the first argument of the OR function evaluates to true, the overall value must be true. \
The precedence of evaluation: 1. ``&&``; 2. ``=``; 3. ``and`` 
```
(dog = (true && false)) #false
```
```
((dog = true) and false) #true
```

### Dangling else problem
"The dangling else is a problem in programming of parser generators in which an optional else clause in an if–then(–else) statement results in nested conditionals being ambiguous."[5] \
The ‘dangling else’ problem is solved in Ruby by requiring nested if statements to be indented. 

## Loops and Subroutines
### Loops
#### while Statement
Executes code while conditional is true. A while loop's conditional is separated from code by the reserved word do, a newline, backslash \, or a semicolon ;.
```
$today = 2
$Saturday = 7
while $today < $Saturday do
    print($today)
    $today +=1
end
```
#### while modifier
If a while modifier follows a begin statement with no rescue or ensure clauses, code is executed once before conditional is evaluated.
```
$today = 2
$Saturday = 7
begin
    print($today)  
    $today +=1
end while $today < $Saturday 
```
#### until Statement
Executes code while conditional is false. An until statement's conditional is separated from code by the reserved word do, a newline, or a semicolon.
```
$today = 2
$Saturday = 7
until $today >= $Saturday do
    print($today)
    $today +=1
end
```
#### until modifier
```
$today = 2
$Saturday = 7
begin
    print($today)
    $today +=1
end until $today < $Saturday
```
#### for loop
Executes code once for each element in expression.
```
for i in 0..5
    puts i
end
```
### Function
Method names should begin with a lowercase letter. If you begin a method name with an uppercase letter, Ruby might think that it is a constant and hence can parse the call incorrectly. \
```
def method_name (var1, var2)
   expr..
end
#set default values for the parameters (can be in different types)
def method_name (var1 = value1, var2 = value2)
   expr..
end
#call the method (alond with the parameters
method name 17, 9
```
#### Ruby alias Statement
This gives alias to methods or global variables. Aliases cannot be defined within the method body. The alias of the method keeps the current definition of the method, even when methods are overridden.
```
alias method-name method-name
alias global-variable-name global-variable-name
```
#### undef Statement
This cancels the method definition. An undef cannot appear in the method body. \
By using undef and alias, the interface of the class can be modified independently from the superclass, but notice it may be broke programs by the internal method call to self.
```
undef method-name
```
### Recursion
Ruby supports recursive function.
```
def add(num)
    if num == 1
        1 # base case 
    else
        num + add(num - 1) # recursive step 
    end
end
   
add(3) 
```
### Pass-reference-by-value
Ruby is pass-by-value but the values it passes are references
![alt text](https://robertheaton.com/images/RubyPBORAppend.jpg) \
They’re different names for the same thing; different boxes containing the same object. The function and caller reference the same object in memory, but accessed through different variables. 

## Objects and classes
Ruby is a pure object-oriented language and everything appears to Ruby as an object. Every value in Ruby is an object. 

### Naming convention
A class definition starts with the keyword ``class``, then the class name and is delimited with an end. The name follows CamelCase. 
```
class Person
   code
end
```
We declare objects of a class using ``new`` keyword. \
```
person1 = Person.new
person2 = Person.new
```
### The initialize Method
The initialize method is a standard Ruby class method and works almost same way as constructor works in other object oriented programming languages. It is preceded by ``def`` keyword as shown below.\
```
class Person
   def initialize(n,a)
      @name, @age = n, a
   end
end
```
### The instance variables
The instance variables are kind of class attributes and they become properties of objects once objects are created using the class. Every object's attributes are assigned individually and share no value with other objects. They are accessed using the ``@`` operator within the class but to access them outside of the class we use public methods, which are called accessor methods. \
```
class Person
   def initialize(n,a)
      # assign instance variables
      @name, @age = n, a
   end
end
```
### The accessor & setter Methods
To make the variables available from outside the class, they must be defined within accessor methods, these accessor methods are also known as a getter methods. Following example shows the usage of accessor methods. \
```
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
x = box.printName()
y = box.printAge()

puts "Name of the person is : #{x}"
puts "Age of the person is : #{y}"
```
Similar to accessor methods, which are used to access the value of the variables, Ruby provides a way to set the values of those variables from outside of the class using setter methods, which are defined as below. \
```
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
```
### The to_s Method
```
class Box
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
```

### Class inheritance 
Ruby does not support multiple levels of inheritances but Ruby supports mixins. A mixin is like a specialized implementation of multiple inheritance in which only the interface portion is inherited. \
When creating a class, instead of writing completely new data members and member functions, the programmer can designate that the new class should inherit the members of an existing class. This existing class is called the base class or superclass, and the new class is referred to as the derived class or sub-class. \
Ruby also supports the concept of subclassing. The syntax for extending a class is simple. Just add a ``<`` character and the name of the superclass to your class statement. 
```
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
box.printIdentity()
```

### Method overloading
Ruby does not support method overloading as Ruby being a dynamically typed language, it does not support static binding at all. In Ruby, when a second method is defined with the same name it completely overrides the previously existing method. The previous method is no longer accessible and hence throws error when we try to access it. \
```
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
```

#### Implementing method overloading in Ruby by varying the number of arguments
##### Using Class Methods
```
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
Test.display"Geeks!!" 
Test.display"Geeks!!", "Hope you doing great."
Test.display"Geeks!!", "Hope you doing great.", "Ruby"
```
##### Using Instance Methods
```
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
ob1.display"Geeks!!" 
ob2.display"Geeks!!", "Hope you doing great."
ob3.display"Geeks!!", "Hope you doing great.", "Ruby"
```
As the number of argument increases the code becomes complex. However we can keep increasing the number of cases to handle varying number of arguments.

## References
[1] https://en.wikipedia.org/wiki/Ruby_(programming_language) \
[2] https://launchschool.com/books/ruby/read/introduction \
[3] https://www.techopedia.com/definition/3301/ruby#:~:text=Ruby%20is%20primarily%20an%20object,and%20false%2C%20is%20an%20object. \
[4] https://acloudguru.com/blog/engineering/what-is-the-ruby-programming-language \
[5] Ruby Programming Language - Full Course. https://www.youtube.com/watch?v=t_ispmWmdjY \
[6] The Well-Grounded Rubyist by David A. Black and Joseph Leo III. https://vn1lib.org/book/3712531/66ab0d \
[7] https://gist.github.com/iangreenleaf/b206d09c587e8fc6399e#:~:text=General%20Ruby%20conventions,suffix%20will%20return%20a%20boolean \
[8] https://zetcode.com/lang/rubytutorial/variables/#:~:text=Variable%20names%20in%20Ruby%20can,begin%20with%20a%20capital%20letter \
[9] https://www.studytonight.com/ruby/reserved-keywords-in-ruby \
[10] http://www.rubyfleebie.com/2007/07/09/ruby-is-dynamically-and-strongly-typed/ \
[11] https://zverok.space/blog/2016-01-18-implicit-vs-expicit.html \
[12] https://www.tutorialspoint.com/ruby/ruby_operators.htm \
[13] https://www.freecodecamp.org/news/data-types-in-ruby-true-false-and-nil-explained-with-examples/#:~:text=Every%20object%20in%20Ruby%20has,everything%20else%20is%20%E2%80%9Ctruthy.%E2%80%9D \
[14] https://www.includehelp.com/ruby/conditional-statements.aspx \
[15] https://www.geeksforgeeks.org/ruby-decision-making-if-if-else-if-else-if-ternary-set-1/ \
[16] https://mixandgo.com/learn/ruby/boolean-operator-precedence \
[17] https://en.wikipedia.org/wiki/Dangling_else \
[18] https://www.geeksforgeeks.org/ruby-case-statement/ \
[19] https://www.tutorialspoint.com/ruby/ruby_loops.htm \
[20] https://www.tutorialspoint.com/ruby/ruby_methods.htm \
[21] https://robertheaton.com/2014/07/22/is-ruby-pass-by-reference-or-pass-by-value/ \
[22] https://www.tutorialspoint.com/ruby/ruby_object_oriented.htm \
[23] https://www.geeksforgeeks.org/method-overloading-in-ruby/




 


