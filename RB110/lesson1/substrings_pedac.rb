def find_reverse_substrings(string)
  substrings = find_substrings(string) #helper-method 1
  mirror_image_substrings(substrings) #helper-method 2
end

#stub for helper-method 1:
def find_substrings(string)
  results = []
  (0...string.length - 1).each do |start_index| # same as (0..string.length - 2), ... already excludes the last index
    (start_index + 1...string.length).each do |end_index| # same as (start_index + 1..string.length - 1), why exclude
      #the last index? simple, length/size will tell you the exact size, of the object, but indexes are zero based
      #which means that if length/size is 4, for example it means that it goes from 0 to 3, index speaking
      substring = string[start_index..end_index]
      results << substring
    end
  end
  results
end

#stub for helper-method 2:
def mirror_image_substrings(substrings)
  results = []
  substrings.each do |substring|
    next if substring.length.odd? #skip if it's not even
    next if substring.length < 4 #we need to halfs with at least 2 chars

    half = substring.length / 2
    left = substring[0...half]
    right = substring[half..-1]

    if left == right.reverse
      results << left
      results << right
    end
  end
  results.uniq
end

p find_reverse_substrings('1221345543')
p find_reverse_substrings('beeekkeeper')
p find_reverse_substrings('1111111')
p find_reverse_substrings('hellolleh')
