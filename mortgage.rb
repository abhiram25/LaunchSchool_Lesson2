require 'pry'

def prompt(message)
  puts "=> #{message}"
end

prompt("What is your loan amount?")
loan = gets.chomp.to_f

prompt("What is your loan duration in months?")
duration = gets.chomp.to_i

prompt("What is your APR?")
apr = gets.chomp.to_f

monthly_interest_rate = apr / 100
monthly_interest_rate /= 12

payment = loan * (monthly_interest_rate * (1 + monthly_interest_rate)**duration)
payment /= ((1 + monthly_interest_rate)**duration - 1)
# payment = payment.round(2)

prompt("Your monthly payment is $" + format('%.2f', payment).to_s)

prompt("After how many months, would you like to know your loan balance?")

months = gets.chomp.to_i

remaining_loan_balance = loan * ((1 + monthly_interest_rate)**duration -
(1 + monthly_interest_rate)**months)
remaining_loan_balance /= ((1 + monthly_interest_rate)**duration - 1)

prompt("Your remaining loan balance is $" +
format('%.2f', remaining_loan_balance).to_s)
