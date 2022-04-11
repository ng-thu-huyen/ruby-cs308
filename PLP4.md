# PLP 4-Loops and Subroutines
## Loops
### while Statement
Executes code while conditional is true. A while loop's conditional is separated from code by the reserved word do, a newline, backslash \, or a semicolon ;.
```
$today = 2
$Saturday = 7
while $today < $Saturday do
    print($today)
    $today +=1
end
```
### while modifier
If a while modifier follows a begin statement with no rescue or ensure clauses, code is executed once before conditional is evaluated.
```
$today = 2
$Saturday = 7
begin
    print($today)  
    $today +=1
end while $today < $Saturday 
```
### until Statement
Executes code while conditional is false. An until statement's conditional is separated from code by the reserved word do, a newline, or a semicolon.
```
$today = 2
$Saturday = 7
until $today >= $Saturday do
    print($today)
    $today +=1
end
```
### until modifier
```
$today = 2
$Saturday = 7
begin
    print($today)
    $today +=1
end until $today < $Saturday
```
### for loop
Executes code once for each element in expression.
```
for i in 0..5
    puts i
end
```
## Function
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
### Ruby alias Statement
This gives alias to methods or global variables. Aliases cannot be defined within the method body. The alias of the method keeps the current definition of the method, even when methods are overridden.
```
alias method-name method-name
alias global-variable-name global-variable-name
```
### undef Statement
This cancels the method definition. An undef cannot appear in the method body. \
By using undef and alias, the interface of the class can be modified independently from the superclass, but notice it may be broke programs by the internal method call to self.
```
undef method-name
```
## Recursion
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
## Pass-reference-by-value
Ruby is pass-by-value but the values it passes are references \
![alt text](https://robertheaton.com/images/RubyPBORAppend.jpg) \
They’re different names for the same thing; different boxes containing the same object. The function and caller reference the same object in memory, but accessed through different variables. 

##References
[1] https://www.tutorialspoint.com/ruby/ruby_loops.htm \
[2] https://www.tutorialspoint.com/ruby/ruby_methods.htm \
[3] https://robertheaton.com/2014/07/22/is-ruby-pass-by-reference-or-pass-by-value/ \


