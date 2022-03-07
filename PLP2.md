# Names, Types and Binding
Refer to the [file](https://github.com/ng-thu-huyen/ruby-cs308/blob/main/testvariables.rb) for code samples
## Naming
Ryby is a case sensitive language.\
Variable names in Ruby can be created from alphanumeric characters and the underscore _ character and should be written in snake_case (community standard).\
A variable cannot begin with a number.\
Variable names cannot begin with a capital letter. If an identifier begins with a capital letter, it is considered to be a constant in Ruby.\
Class names should be written in CamelCase (community standard).\
Methods should be written in snake_case (community standard).

### Keywords
The below keywords cannot be used for naming variables or constants in Ruby.
BEGIN	| END |	alias |	and |	begin |	break |	case | class |	def
--- | --- | --- | --- |--- |--- |--- |--- |--- 
module |	next |	nil |	not |	or |	redo |	rescue |	retry |	return
--- | --- | --- | --- |--- |--- |--- |--- |--- 
elsif	| end |	false | ensure |	for |	if |	true |	undef |	unless
--- | --- | --- | --- |--- |--- |--- |--- |--- 
do |	else |	super |	then |	until |	when |	while |	defined? |	self

## Types
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
### Ruby is dynamically typed
```
x = 7.5
x = "hello"
puts x #prints hello
```
### Ruby is strongly typed
```
x = "7.5"
y = x + "hello" 
puts y #prints "7.5hello"
z = x + 7.5 
puts z #Ruby cannot do this
```
### Mutable and immutable variables
#### Mutable
String\
Array\
Hash

#### Immutable
Integer\
Float\
Boolean\
Symbol

### Explicitly and implicitly type conversions
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
## Operators
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

## Addresses and binding
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

## References
[1] https://gist.github.com/iangreenleaf/b206d09c587e8fc6399e#:~:text=General%20Ruby%20conventions,suffix%20will%20return%20a%20boolean \
[2] https://zetcode.com/lang/rubytutorial/variables/#:~:text=Variable%20names%20in%20Ruby%20can,begin%20with%20a%20capital%20letter \
[3] https://www.studytonight.com/ruby/reserved-keywords-in-ruby \
[4] http://www.rubyfleebie.com/2007/07/09/ruby-is-dynamically-and-strongly-typed/ \
[5] https://zverok.space/blog/2016-01-18-implicit-vs-expicit.html \
[6] https://www.tutorialspoint.com/ruby/ruby_operators.htm 




