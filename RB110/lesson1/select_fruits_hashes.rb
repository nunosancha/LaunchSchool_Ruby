def select_fruit(produce_list)
  produce_keys = produce_list.keys #.keys will produce an array with all the keys and assign it to produce_keys
  counter = 0
  selected_fruits = {}

  loop do

    # this has to be at the top in case produce_list is empty hash
    break if counter == produce_keys.size

    current_key = produce_keys[counter] #gets the key
    current_value = produce_list[current_key] #gets the value, since current_key is a string
                                              #we can call it on produce_list and get the value

    if current_value == 'Fruit'
      selected_fruits[current_key] = current_value
    end

    counter += 1
  end
  selected_fruits
end



produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}
