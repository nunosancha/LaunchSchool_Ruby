def crunch(str)
  
  result = ''

  str.each_char do |char|
    result << char if char != result[-1]
  end

  result
end

puts "Enter a string:"
characters = gets.chomp

puts "Your new string with no duplicate consecutive letters is: \n #{crunch(characters)}"
