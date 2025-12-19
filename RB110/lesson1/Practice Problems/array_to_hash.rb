#Turn this array into a hash where the names are the keys
#and the values are the positions in the array.
def array_to_hash
  flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
  counter = 0
  new_hash = {}

  loop do
    break if counter == flintstones.size
    new_hash[flintstones[counter]] = counter
    counter += 1
  end
  new_hash
end

=begin
LS solution
flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end
=end
