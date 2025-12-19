def ask_for(word_type)
  print "Enter a #{word_type}"
  gets.chomp
end

noun = ask_for('noun')
verb = ask_for('verb')
adjective = ask_for('adjective')
adverb = ask_for('adverb')

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
