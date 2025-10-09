def prompt(message)
  Kernel.puts("=> #{message}")
end

def welcome_message
  prompt("Welcome to the Mortage Calculator!")
  prompt("----------------------------------")
end

def get_loan_amount
  prompt("What is the loan amount?")
  amount = '' #starts an empty variable that will be validated inside of the loop
  loop do
    amount = Kernel.gets().chomp()
    
    if amount.empty?() || amount.to_f() < 0
      #checks if we inserted an empty value and if the value inserted when
      #converted to float is a negative nnumber
      prompt("Must enter a positive number.")
    else
      break #if the value exists, and it's not a negative number we proceed
    end
  end
  amount 
end

def get_interest_rate
  prompt("What is the interest rate?")
  prompt("Example: 5 for 5% or 2.5 for 2.5%")
  interest_rate = ''
  loop do
    interest_rate = Kernel.gets().chomp()
    
      if interest_rate.empty?() || interest_rate.to_f() < 0
        prompt("Must enter positive number.")
      else
        break
      end
    end
    interest_rate
end

def get_loan_duration
  prompt("What is the loan duration(in years)?")
  loan_duration = ''
  loop do
    loan_duration = Kernel.gets().chomp()
    if loan_duration.empty?() || loan_duration.to_i() < 0
      prompt("Enter a valid year")
    else
      break
    end
  end
  loan_duration
end

def another_calculation
  prompt("Do you want to make another calculation?")
  answer = Kernel.gets().chomp()
  answer
end

def calculate_monthly_payment(loan_amount, interest_rate, loan_duration)
  
  annual_interest_rate = interest_rate.to_f() / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = loan_duration.to_i() * 12
  monthly_payment = loan_amount.to_f() * (monthly_interest_rate /
  (1 - (1 + monthly_interest_rate) ** (-months)))
  
  monthly_payment
end

def display_results(monthly_payment)
   prompt("Your monthly payment is: $#{format('%.2f', monthly_payment)}")
end

loop do 
#main loop to be able to do another calculation
#when we get to the end of the program
  welcome_message
  
  loan_amount = get_loan_amount
  
  interest_rate = get_interest_rate
  
  loan_duration = get_loan_duration
  
  display_results(calculate_monthly_payment(loan_amount, interest_rate, loan_duration))
    
  #converting into percentage
  #converting the annual interest to monthly
  
  break unless another_calculation.downcase().start_with?('y')  
  
end

prompt("Thank you for using the Mortgage Calculator!")
prompt("Good bye!")