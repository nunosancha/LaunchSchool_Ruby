def generate_table (limit = 10)
  puts "--- Multiplication table from 1 to #{limit} ---"

  #outer loop: defines the multiplying number
  (1..limit).each do |multiplying|

    #inner loop: defines the multiplier
    (1..limit).each do |multiplier|

      result = multiplying * multiplier

      #outputs the operation (ex: 1 x 1 = 1)
      puts "#{multiplying} x #{multiplier} = #{result}"
    end

    # separates the tables
    puts "-" * 20
  end
end

generate_table
