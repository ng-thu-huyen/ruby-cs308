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

