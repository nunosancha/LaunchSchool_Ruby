#ask the user for two numbers
#ask the user for an operation to perform
#perform the opertation on the two numebers
#output the result

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

#defines the language to Portuguese, to set it to English use 'en'
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
  operator #Return the valid operator
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

loop do #main loop

number1 = get_valid_number('first_num')
number2 = get_valid_number('second_num')

operator = get_valid_operator('operation_prompt')

operation_message = messages('doing_operation') % { operation: operation_to_message(operator) }
prompt(operation_message)

=begin
Operation_message receives the result of doing_operation, that in the YAML file has %{operation}
so we define operation as being the method operation_to_message(operator) which receives the valid
operator that we already called the method above
=end

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

result_message = messages('result') % { result: result }
prompt(result_message)
#get the message from result in YAML file, and define %{result} as the variable result
#from the CASE above
  
prompt(messages('another_calculation'))
answer = Kernel.gets().chomp()
break unless answer.downcase().start_with?('y')

end

prompt(messages('farewell'))