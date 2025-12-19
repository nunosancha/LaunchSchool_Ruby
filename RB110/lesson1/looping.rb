numbers_of_pets = {
  'dogs' => 2,
  'cats' => 4,
  'fish' => 1
}
pets = numbers_of_pets.keys # => ['dogs', 'cats', 'fish']
counter = 0

loop do
  break if counter == numbers_of_pets.size
  current_pet = pets[counter]
  current_pet_number = numbers_of_pets[current_pet]
  puts "I have #{current_pet_number} #{current_pet}"
  counter += 1
end
=begin
objects = ['Hello', :key, 10, []]
counter = 0

loop do
  break if counter == objects.size
  puts objects[counter].class
  counter += 1
end

colors = ['green', 'blue', 'purple', 'orange']
counter = 0

loop do
  break if counter == colors.size
  puts "I'm the color #{colors[counter]}!"
  counter += 1
end

alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = 0

loop do
  break if counter == alphabet.size
  puts alphabet[counter]
  counter += 1
end

counter = 0

loop do
  counter += 1
  # since code after next doesn’t run, 
  # # make sure any essential updates 
  # # (like incrementing a counter) happen before
  # next to avoid infinite loops.
  next if counter.odd?
  puts counter
  break if counter > 5
end

counter = 0

loop do
  puts 'Hello!'
  counter += 1
  break if counter == 5
end


loop do
  number= rand(1..10) # a random number between 1 and 10
  puts 'Hello!'
  if number == 5
    puts 'Exiting...'
    break
  end
end

arr = [1, 2, 3, 4, 5]
counter = 0

loop do
  arr[counter] += 1
  counter += 1
  break if counter == arr.size
end

p arr
=end
