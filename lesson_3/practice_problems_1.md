### Question 1:

**What would you expect the code below to print out?**

`numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers`

**Answer:**
1, 2, 3


### Question 2:

**what is `!=` and where should you use it?**

it represents different. it should be use when we are trying to compare if a value/variable is different than another value/variable

**put `!` before something, like `!user_name`**
it's like saying *not* user_name, which means it flips it from true to false or from false to true

**put `!` after something, like `words.uniq!`**
it serves as an alert that the method is destructive (it mutates something), and usually it return the value as well instead of nil, after mutating it.

**put `?` before something**
creates a *character literal*, I couldn't understand well what it's useful for. But I could understand that it only takes one character, let's say '?a', if I try '?ab' it returns a *syntax error found (SyntaxError)*

**put `?` after something**
checks for what we are looking for and returns boolean value true or false

**put `!!` before something, like `!!user_name`**
double bang, used to convert any value into boolean true or false.returns true for everything except false and nil.

### Question 3:

**Replace the word "important" with "urgent" in this string:**

`advice = "Few things in life are as important as house training your pet dinosaur."`

**Answer:**

`advice.gsub!('important', 'urgent')`


### Question 4:

**The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:**

`numbers = [1, 2, 3, 4, 5]`

**What do the following method calls do (assume we reset numbers to the original array between method calls)?**

`numbers.delete_at(1)
numbers.delete(1)`

**Answer:**

delete_at(1) deletes at the index one of the array, which means that it deletes '2'. numbers will return [1, 3, 4, 5]

delete(1) deletes the element that is passed, in this case '1'. numbers will return [2, 3, 4, 5]


### Question 5:

(10..100).cover?(42)

to be honest I used include?(42), but than I checked the solution and I saw cover?, so I decided to search and learn about cover? and it made more sense. Less computational effort required and it works better for floating point. inlude? will iterate and come with an answer, true if it finds what you looking for and false if not. cover? will just ask the question is this thing supposed to be between these two values? ok.


### Question 6:

famous_words = "seven years ago..."

"Four score and " + famous_words
"Four score and " << famous_words

### Question 7:

`flintstones.flatten!`

### Question 8:

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

new_arr = nil

flintstones.each do |k, v|
  if k == "Barney"
    new_arr = [k, v]
    break
  end
end

This was my solution, but I got intrigued by the purposed solution by LS. I wanted to understand why flintstones.assoc("Barney") was a valid answer, and a simple one, and learned that flintstones.rassoc(2) would work too, .rassoc gets the value and finds the key.





