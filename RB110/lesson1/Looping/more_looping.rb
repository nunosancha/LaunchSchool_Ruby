numbers = [1, 2, 3, 4, 5]

what_is_returned = numbers.each do |num|
  puts num
end

numbers.each do |num|
  puts num if num.odd?
end

numbers.map do |num|
  puts num if num.odd?
end

numbers.select do |num|
  num.odd?
end

numbers.collect do |num|
  num.odd?
end

numbers.reject do |num|
  num.odd?
end
