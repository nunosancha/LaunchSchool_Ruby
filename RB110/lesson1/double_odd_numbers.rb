# Here, we only multiply by 2 if the value is odd.
# The if condition will only evaluate to true if current_number is odd
# (we check this using Integer#odd?).

def double_odd_numbers(numbers)
  double_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size
    #break goes first so we can skip
    #the loop of an empty array

    current_number = numbers[counter]
    current_number *= 2 if current_number.odd?
    double_numbers << current_number

    counter += 1
  end

  double_numbers
end

#using for loop

def double_odd_numbers(numbers)
  double_numbers = []

  for counter in 0...numbers.size # or 0..numbers.size - 1
    current_number = numbers[counter]
    current_number *= 2 if current_number.odd?
    double_numbers << current_number
  end

  double_numbers
end

#the main difference is:
#no manual counter and break
#we incorporate the counter and the
#break condition in the loop

def double_odd_numbers(numbers)
  double_numbers = []

  numbers.each do |num| # or 0..numbers.size - 1
    current_number = num
    current_number *= 2 if current_number.odd?
    double_numbers << current_number
  end

  double_numbers
end

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
