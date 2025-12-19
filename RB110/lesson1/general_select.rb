def general_select(produce_list, selection_criteria)
  produce_key = produce_list.keys
  counter = 0
  selected_produce = {}

  loop do
    break if counter == produce_key.size

    current_key = produce_key[counter]
    current_value = produce_list[current_key]

    #instead of just use current_value == 'Fruit'
    # current_value == 'Vegetable'
    if current_value == selection_criteria
      selected_produce[current_key] = current_value
    end

    counter += 1
  end
  selected_produce
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p general_select(produce, 'Fruit')     # => {"apple"=>"Fruit", "pear"=>"Fruit"}
p general_select(produce, 'Vegetable') # => {"carrot"=>"Vegetable", "broccoli"=>"Vegetable"}
p general_select(produce, 'Meat')
