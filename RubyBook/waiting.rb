time_until_bus = 10

loop do
  
   puts "#{time_until_bus} minute(s) until next bus"
   time_until_bus -= 1

   if time_until_bus.zero? #time_until_bus == 0
     puts 'Bus arrived — All aboard'
     break
   end

 end
