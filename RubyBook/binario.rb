def binary_converter(number)

  number = number.to_i
  binary = 0

  until (number / 2) == 0
    binary << (number % 2)
    number = number / 2
  end
  
  binary
end

puts "Enter an Integer to be converted in Binary Number"
number = gets.chomp

converted = binary_converter(number)

puts "Binary: #{converted.to_s(2)}"
