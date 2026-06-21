=begin
Problem:
get a number from the user that is greater than 0
ask the user if he wants to compute a sum 's' or the product 'p'
than output the result of the operation chosen by the user
from 1 to the number that was input

input: integer greater than 0
output: integer (sum or product)

example:
user enters '5' and chooses 's':
return: The sum of the integers between 1 and 5 is 15.

user enters '6' and chooses 'p'
return: The product of the integers between 1 and 6 is 720.

data: integer

algorithm:
- ask for the user to input an integer greater than zero
- confirm if it is a positive number
- if number is positive ask what operation they want to perform (s or p)
- if not, ask the user to input an integer greater than zero
- once the user input the operation wanted, use the input to perform the right
operation, sum or product, from 1 to the integer that was input from user.
-output the result
=end

def num_input
  number = nil #create the variable outside the loop for scoping reasons
  #it won't be available outside the loop otherwise
  loop do
    puts "Please enter an integer greater than 0:"
    number = gets.chomp.to_i #always remember to convert from string
    break if number > 0
    puts "Invalid input. Number must be greater than 0."
  end

  number
end

def calculate(number)
operation = nil
  loop do
    puts "Enter 's' to compute the sum, 'p' to compute the product."
    operation = gets.chomp
    break if %w[s p].include?(operation)
    puts "Invalid input. Please enter 's' or 'p'."
  end

  result = case operation
  when 's'
    (1..number).sum
  when 'p'
    (1..number).inject(1, :*)
  end
op = operation == 's' ? 'sum' : 'product'
puts "The #{op} of the integers between 1 and #{number} is #{result}."

end

number = num_input
calculate(number)

=begin
LS solution
def compute_sum(number)
  total = 0
  1.upto(number) { |value| total += value }
  total
end

def compute_product(number)
  total = 1
  1.upto(number) { |value| total *= value }
  total
end

puts ">> Please enter an integer greater than 0"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Oops. Unknown operation."
end
=end
