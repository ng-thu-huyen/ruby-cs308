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




##References
[1] https://www.tutorialspoint.com/ruby/ruby_loops.htm \
[2] 
