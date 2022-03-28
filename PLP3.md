# PLP 3: Selection Control Structures
## Boolean values
``true`` and ``false`` are native boolean values in Ruby. ``true`` presents truth while ``false`` presents not true.\
``nil`` is a special value in Ruby, which means nothing. It either does not exist or could not be found. (Note: 0 and empty strings, arrays, hashes are not ``nil``)\
Every object in Ruby has a boolean value. If they are ``false`` and ``nil``, they are falsey. Others are truthy.

## Conditional statements
### If statement
```
if (condition)
  #statements
end 
```
If you find the condition true, do something, otherwise do something else.

### If else statement
```
if (condition)
  #instructions
else
  #instructions
end
```
This indicates what should happen next (in ``else``) if the condition is false.

### short if statement
```
result = (condition) ? (expression-if-true) : (expression-if-false)
```
Similar to If else statement but saves more spaces. The statement is recommended in small tasks.

### If else if statement
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

### Unless
```
unless condition
  #code block
end
```
Contradicted to ``If``, if you find the condition is false, the code block is executed.

### Case statement
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

## Short-circuit evaluation
Ruby uses short-circuit evaluation. \
When the first argument of the AND function evaluates to false, the overall value must be false; and when the first argument of the OR function evaluates to true, the overall value must be true. \
The precedence of evaluation: 1. ``&&``; 2. ``=``; 3. ``and`` 
```
(dog = (true && false)) #false
```
```
((dog = true) and false) #true
```

## Dangling else problem
"The dangling else is a problem in programming of parser generators in which an optional else clause in an if–then(–else) statement results in nested conditionals being ambiguous."[5] \
The ‘dangling else’ problem is solved in Ruby by requiring nested if statements to be indented. 

## References
[1] https://www.freecodecamp.org/news/data-types-in-ruby-true-false-and-nil-explained-with-examples/#:~:text=Every%20object%20in%20Ruby%20has,everything%20else%20is%20%E2%80%9Ctruthy.%E2%80%9D \
[2] https://www.includehelp.com/ruby/conditional-statements.aspx \
[3] https://www.geeksforgeeks.org/ruby-decision-making-if-if-else-if-else-if-ternary-set-1/ \
[4] https://mixandgo.com/learn/ruby/boolean-operator-precedence \
[5] https://en.wikipedia.org/wiki/Dangling_else \
[6] https://www.geeksforgeeks.org/ruby-case-statement/
