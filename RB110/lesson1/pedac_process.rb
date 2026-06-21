def sum_even_number_row(row_number)
  rows = []
  start_integer = 2
  # row_length = 1
  #steps 2-3
  # loop do
  #   rows << create_row(start_integer, row_length)
  #   row_length += 1
  #   break if row.length == row_number
  # end

  (1..row_number).each do |current_row_number|
    rows << create_row(start_integer, current_row_number)
    start_integer = rows.last.last + 2
  end

  return rows.last.sum #TODO: sum the final row and return the sum
end

def create_row(start_integer, row_length)
  row = []
  current_integer = start_integer

  loop do
    row << current_integer
    current_integer += 2
    break if row.length == row_length
  end

  return row
end

# Row number: 1 --> Sum of Integers in row: 2
# Row number: 2 --> Sum of Integers in row: 10
# Row number: 4 --> Sum of Integers in row: 68

p sum_even_number_row(1) #== 2
# p sum_even_number_row(2) == 10
# p sum_even_number_row(4) == 68

# start: 2, length: 1 --> [2]
# start: 4, length: 2 --> [4, 6]
# start: 8, length: 3 --> [8, 10, 12]

# p create_row(2, 1) == [2]
# p create_row(4, 2) == [4, 6]
# p create_row(8, 3) == [8, 10, 12]
