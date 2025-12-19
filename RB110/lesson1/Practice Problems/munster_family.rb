#Practice Problem 3
#Add up all of the ages from the Munster family hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
total = 0

ages.each do |k, v|
  total += v
end

total

#Another option would be to use a Enumerable#inject method.

ages.values.inject(:+) # => 6174


#Practice Problem 4
#Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.values.sort.first

#Launschool solution

ages.values.min

#Practice Problem 5
#Find the index of the first name that starts with "Be"
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.index do |name|
  name[0, 2] == "Be"
end


#Practice Problem 6
#Write code that changes the array below so that all of the names are shortened
#to just the first three characters. Do not create a new array.

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |name|
  name[0, 3]
end


statement = "The Flintstones Rock"
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end

#Practice Problem 9
#As we have seen previously we can use some built-in string methods to change
#the case of a string. A notably missing method is something provided in Rails,
#but not in Ruby itself...titleize. This method in Ruby on Rails creates a
#string that has each word capitalized as it would be in a title.
#For example, the string:

# words = "the flintstones rock"

#would be:

#words = "The Flintstones Rock"

#Write your own version of the Rails titleize implementation.

words = "the flintstones rock"
separated_words = words.split

titleize_words = []

separated_words.each do |word|
  word = word.capitalize
  titleize_words << word
end

titleize_words.join(" ")

#another approach

words = "the flintstones rock"

words.split.map { |word| word.capitalize  }.join(" ")


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  case details["age"]
  when 0...18
    details['age_group'] = 'kid'
  when 18...65
    details['age_group'] = 'adult'
  else
    details['age_group'] = 'senior'
  end
end
