def multiply(numbers_collection, multiplier)
  multiplied_numbers = []
  counter = 0

  loop do
    break if counter == numbers_collection.size
    #break goes first so we can skip
    #the loop of an empty array

    current_number = numbers_collection[counter]
    multiplied_numbers << current_number * multiplier

    counter += 1
  end

  multiplied_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 4)

#mutating version

# def double_numbers!(numbers)
#   counter = 0
#
#   loop do
#     break if counter == numbers.size
#
#     current_number = numbers[counter]
#     numbers[counter] = current_number * 2
#
#     counter += 1
#   end
#
#   numbers
# end
