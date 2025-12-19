# 1st try

def calculate_bonus(salary, has_bonus)
  bonus = 0
  if has_bonus == true
    bonus = salary / 2
  else
    bonus
  end
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

# 1st refactoring: has_bonus is already a boolean
#no need to check if it's true or false, it's redundant

def calculate_bonus(salary, has_bonus)
  if has_bonus
    salary / 2
  else
    0
  end
end

#2nd refactoring, making the code shorter

def calculate_bonus(salary, has_bonus)
  has_bonus ? salary / 2 : 0
end
