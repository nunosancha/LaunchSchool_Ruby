SQMETERS_TO_FEET = 10.7639

puts 'Enter the length of the room in meters:'
length = gets.chomp.to_f

puts 'Enter the width of the room in meters:'
width = gets.chomp.to_f

area = length * width
area_feet = area * SQMETERS_TO_FEET

puts "The area of the room is #{area} square meters (#{area_feet.round(2)} square feet)."
