def double_numbers(numbers)
  double_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size
    #break goes first so we can skip
    #the loop of an empty array

    current_number = numbers[counter]
    double_numbers << current_number * 2

    counter += 1
  end

  double_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
double_numbers(my_numbers)

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
