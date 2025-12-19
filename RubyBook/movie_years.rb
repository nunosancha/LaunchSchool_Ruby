movies = { movie1: '1975', movie2: '2004', movie3: '2013', movie4: '2001', movie5: '1981' }

movies.each_value do |year|
  puts year
end

=begin

LaunchSchool solution

movies = { jaws: 1975,
           anchorman: 2004,
           man_of_steel: 2013,
           a_beautiful_mind: 2001,
           the_evil_dead: 1981 }

puts movies[:jaws]
puts movies[:anchorman]
puts movies[:man_of_steel]
puts movies[:a_beautiful_mind]
puts movies[:the_evil_dead]

=end
