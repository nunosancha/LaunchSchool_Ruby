def not_so_tricky_method (a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]
  
  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]

my_string, my_array = not_so_tricky_method(my_string, my_array)

my_string
my_array

def color_valid(color)
  color == "blue" || color == "green"
end