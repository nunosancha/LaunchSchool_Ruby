alphabet = 'abcdefghijklmnopqrstuvwxyz'
selected_chars = ''
counter = 0

loop do
  current_char = alphabet[counter]

  if current_char == 'g'
    selected_chars << current_char
    #appends current_char into the selected_chars
  end

  counter += 1 #increases the counter so we can go through the entire string
  break if counter == alphabet.size #breaks when counter reaches the same value
  #of the string length, meaning that we looped through the entire string
end

p selected_chars
