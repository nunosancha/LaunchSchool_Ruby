### Question 1
Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had video screens).

For this practice problem, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:

The Flintstones Rock!
 The Flintstones Rock!
  The Flintstones Rock!
  
**Answer**

`10.times { |num| puts (" " * num) + "The Flintstones Rock!" }`

At every step number gets an index value, first 0, then 1... until 9. Every loop the code will multiply the empty string with the index, this will provide the spaces, and then concat it to the string "The Flintstones Rock!".


### Question 2
The result of the following statement will be an error:

`puts "the value of 40 + 2 is " + (40 + 2)`

Why is this and what are two possible ways to fix this?

**Answer**

you cannot perform operations between strings and integers. the code is saying: sum this string and 42 and give me the result of that sum.

one way to fix this is converting to string (40 + 2).to_s

the other is to use string interpolation #{40 + 2} to execute the operation.

### Question 3
Alan wrote the following method, which was intended to show all of the factors of the input number:

`def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end`

Alyssa noticed that this will fail if the input is 0, or a negative number, and asked Alan to change the loop. How can you make this work without using the begin/end until construct? Note that we're not looking to find the factors for 0 or negative numbers, but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.

Bonus 1
What is the purpose of the number % divisor == 0 ?

Bonus 2
What is the purpose of the second-to-last line (line 8) in the method (the factors before the method's end)?

**Answers**

`def factors(number)
  divisor = number
  factors = []
  while divisor > 0 #to be honest, my solution was while divisor != 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end`

Bonus 1:

It checks if the rest of division equals 0, if it is, this means that the number is considerated divisible and it's added to the array factors.

Added response learned from LS Solution with better wording:

Allows you to determine if the result of the division is an integer number (no remainder).


Bonus 2:

Return the Array factors as the result of the method
