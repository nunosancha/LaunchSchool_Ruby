=begin

sunflower_hieght = 0

loop do
  sunflower_hieght = sunflower_hieght + 5

  if sunflower_hieght > 20
    puts "I'm all grown now"
    break
  else
    puts "I'm growing"
  end
end

=end

days = 3

loop do
  break if days.zero?
  puts "#{days} until payday"
  days = days - 1
end

puts "It's payday!!!"
