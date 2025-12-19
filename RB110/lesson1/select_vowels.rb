def select_vowels(str)
  selected_chars = ''
  counter = 0

  loop do
    current_char = str[counter]

    if 'aeiouAEIOU'.include?(current_char)
      selected_chars << current_char
    end

    counter += 1
    break if counter == str.size
  end

  selected_chars
end

select_vowels('the quick brown fox')      # => "euioo"

sentence = 'I wandered lonely as a cloud'
select_vowels(sentence)                   # => "Iaeeoeaaou"


# if 'aeiouAEIOU'.include?(current_char)
#   selected_chars << current_char
# end


# first you come with the thing you want to do.
# in this case, we checking for vowels, if th
# current character is a vowels we append it to
# selected_chars, then we loop it
