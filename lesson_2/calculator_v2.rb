#ask the user for two numbers
#ask the user for an operation to perform
#perform the opertation on the two numebers
#output the result

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')


=begin
def prompt(key)
  message = messages(key, LANGUAGE)
  Kernel.puts("=> #{message}")
end
=end

def messages(message, lang='pt')
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  #num.to_i() != 0
  num.to_i().to_s == num #a better solution, it will return 0 as true, a valid numnber as well
end

def get_valid_number(prompt_key)
  number = ''
  loop do
    prompt(messages(prompt_key))
    number = Kernel.gets().chomp()

    if valid_number?(number)
      break
    else
      prompt(messages('not_valid_number'))
    end
  end
  number  # Return the valid number
end

def get_valid_operator(prompt_key)
  operator=''
  loop do
    prompt(messages(prompt_key))
    operator = Kernel.gets().chomp()
      if %w(1 2 3 4).include?(operator)
        break
      else
        prompt(messages('valid_operator'))
      end
    end
  operator
end

def operation_to_message(op)
  operation_key = case op
    when '1'
      'adding'      # YAML key, not the message
    when '2'
      'subtracting' # YAML key, not the message
    when '3'
      'multiplying'
    when '4'
      'dividing'
  end
  messages(operation_key)  # Look up the actual message
end

prompt(messages('welcome'))

name=''
loop do
  name = Kernel.gets().chomp()
  
  if name.empty?()
    prompt(messages('valid_name'))
  else
    break
  end
end

greeting_message = messages('greeting') % { name: name }
prompt(greeting_message)

=begin
  number1 = ''
  loop do
    prompt(messages('first_num'))
    number1 = Kernel.gets().chomp()
  
    if valid_number?(number1)
      break
    else
      prompt(messages('not_valid_number'))
    end
  end

  number2 = ''
  loop do
    prompt(messages('second_num'))
    number2 = Kernel.gets().chomp()
  
    if valid_number?(number2)
      break
    else
      prompt(messages('not_valid_number'))
    end
  end

It's better to use a helper method since we doing two similar
operations, and the only different thing is first_num and second_num
=end

loop do #main loop

number1 = get_valid_number('first_num')
number2 = get_valid_number('second_num')
  
=begin
  operator_prompt = <<-MSG
    "What operation would you like to perform? 
    1) add 
    2) substract 
    3) multiply 
    4) divide"
  MSG
=end

=begin  
prompt(messages('operation_prompt'))
  
operator=''
  loop do
    operator = Kernel.gets().chomp()
    
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('valid_operator'))
    end
end
=end
  operator = get_valid_operator('operation_prompt')
  # ou usamos o .to_i() no operator para transforma-lo em int
  # ou temos de usar string no when para que o programa reconheca a entrada
  
  operation_message = messages('doing_operation') % { operation: operation_to_message(operator) }
  prompt(operation_message)
 
  #prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
  when '1'
    number1.to_i() + number2.to_i()
  when '2'
    number1.to_i() - number2.to_i()
  when '3'
    number1.to_i() * number2.to_i()
  when '4'
    number1.to_f() / number2.to_f()
  end
        
  #prompt("The result is #{result}")
  result_message = messages('result') % { result: result }
  prompt(result_message)
  
  prompt(messages('another_calculation'))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')

end

prompt(messages('farewell'))