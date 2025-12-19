# frozen_string_literal: true

=begin
def bus_destination(destination)
  if destination.downcase == 'London'.downcase
    'Get on the Bus'
  elsif destination.downcase == 'Paris'.downcase
    "Don't be silly, you can't get a bus to #{destination.capitalize}"
  else
    'Wait for a Bus'
  end
end
=end

def bus_destination(destination)
  case destination
  when 'London'
    puts 'Get on the bus'
  when 'Paris'
    puts "Don't be silly, you can't get a bus to Paris"
  else
    puts 'Wait for a Bus'
  end
end

puts 'Where is the bus going?'
destination = gets.chomp

puts bus_destination(destination)
