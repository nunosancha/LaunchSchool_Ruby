def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do 
#main loop to be able to do another calculation
#when we get to the end of the program
  prompt("Welcome to the Mortage Calculator!")
  prompt("----------------------------------")
  
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
  
  prompt("What is the interest rate?")
  prompt("Example: 5 for 5% or 2.5 for 2.5%")
  #We will convert the number into percentage below when we start doing
  #calculations belows
  
  interest_rate = ''
  loop do
    interest_rate = Kernel.gets().chomp()
    
      if interest_rate.empty?() || interest_rate.to_f() < 0
        prompt("Must enter positive number.")
      else
        break
      end
    end
    
    prompt("What is the loan duration(in years)?")
    
  years = ''
  loop do
    years = Kernel.gets().chomp()
    if years.empty?() || years.to_i() < 0
      prompt("Enter a valid year")
    else
      break
    end
  end
    
    #converting into percentage
    #converting the annual interest to monthly
    annual_interest_rate = interest_rate.to_f() / 100
    monthly_interest_rate = annual_interest_rate / 12
    months = years.to_i() * 12
    
    monthly_payment = amount.to_f() * (monthly_interest_rate /
    (1 - (1 + monthly_interest_rate) ** (-months)))
    
    prompt("Your monthly payment is: $#{format('%.2f', monthly_payment)}")
    
    prompt("Do you want to make another calculation?")
    answer = Kernel.gets().chomp()
    
    break unless answer.downcase().start_with?('y') 
     
end

prompt("Thank you for using the Mortgage Calculator!")
prompt("Good bye!")