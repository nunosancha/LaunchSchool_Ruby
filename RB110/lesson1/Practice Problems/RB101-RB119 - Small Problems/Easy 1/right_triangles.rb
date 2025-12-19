#fliped, upside-down triangle
def triangle(num)
  spaces = num - num
  stars = num

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars) + ('*' * stars) + (' ' * spaces)
    spaces += 1
    stars -= 1
  end
end

triangle(5)

#spaces in the 1st row = 0, stars in the 1st row = 5 in this case
