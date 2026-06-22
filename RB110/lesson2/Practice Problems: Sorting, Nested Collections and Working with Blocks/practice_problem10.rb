#Given the following data structure and without modifying the original array,
#use the map method to return a new array identical in structure to the
#original but where the value of each integer is incremented by 1.

#my solution
[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
  hsh.map do |_, v|
    v + 1
  end
end

#the result is wrong
#=> [[2], [3, 4], [5, 6, 7]]
#i need it to be an hash

#the right solution
[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
  incremented_hash = {}
  hsh.each do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
end
