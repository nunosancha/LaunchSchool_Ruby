arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

#my solution using .select
arr.map do |sub_arr|
  sub_arr.select do |el|
    el % 3 == 0
    #el if el % 3 == 0
    #.select already selects using true or false
    #and there is no need for if since the expression
    #itself returns true or false
  end
end

#my solution using .reject
arr.map do |sub_arr|
  sub_arr.reject do |el|
    el % 3 != 0
    #el if el % 3 != 0
    #same explanation
  end
end
