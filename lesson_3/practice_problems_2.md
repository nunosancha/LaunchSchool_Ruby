###Question 1

In this hash of people and their age,

`
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
`

see if "Spot" is present.

Bonus: What are two other hash methods that would work just as well for this solution?

**Answer:**

`ages.key?("Spot")`

**other methods:**

`ages.include?("Spot")`

`ages.has_key?("Spot")`

###Question 2

Starting with this string:

`munsters_description = "The Munsters are creepy in a good way."`

Convert the string in the following ways (**code will be executed on original** munsters_description above):

`"tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
"The munsters are creepy in a good way."
"the munsters are creepy in a good way."
"THE MUNSTERS ARE CREEPY IN A GOOD WAY."`

**Answer:**

`munsters_description.swapcase!
munsters_description.capitalize!
munsters_description.downcase!
munsters_description.upcase!`

###Question 3

We have most of the Munster family in our age hash:

`ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }`

add ages for Marilyn and Spot to the existing hash

`additional_ages = { "Marilyn" => 22, "Spot" => 237 }`

**Answer**

`ages.merge!(additional_ages)`

###Question 4
See if the name "dino" appears in the string below:

advice = "Few things in life are as important as house training your pet dinosaur."

`advice.split.include?("dino")`

The school solution says:

`advice.match?("dino")

Note that this is not a perfect solution, as it would match any substring with Dino in it.`

But this could be me not understanding the question, because name "dino" doesn't appear, only a substring of dinosaur 

###Question 5

Show an easier way to write this array:

`flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]`

**Answer**

`flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)`

###Question 6

How can we add the family pet "Dino" to our usual array:

`flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)`

**Answer**

`flintstones << "Dino"`

