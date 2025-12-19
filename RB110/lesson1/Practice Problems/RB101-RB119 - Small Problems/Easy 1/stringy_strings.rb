=begin
Write a method that takes one argument, a positive integer, and returns
a string of alternating 1s and 0s, always starting with 1. The length
of the string should match the given integer.

Examples:

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

The tests above should print true.
=end
#After seeing the LS solution
def stringy(num)
  numbers = [] #create an empty array (container)

  num.times do |index|
    number = index.even? ? 1 : 0 #check if index is even, if true 1 if false 0
    numbers << numbers #number 1 or 0 is shoveled inside the array numbers
  end
end

numbers.join #convert the numbers array into a string

=begin
My 1st solution

def stringy(num)
 str = '10'
 if num.even?
   str = str * (num/2)
 else
   str = (str * (num/2)) + '1'
 end
end

After refactoring

def stringy(num)
  base = '10' * (num / 2)
  num.even? ? base : base + '1'
end
=end
