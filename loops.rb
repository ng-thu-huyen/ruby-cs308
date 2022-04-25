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
