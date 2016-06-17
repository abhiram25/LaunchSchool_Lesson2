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

mir = apr / 100
mir /= 12

payment = loan * (mir * (1 + mir)**duration)
payment /= ((1 + mir)**duration - 1)
payment = payment.round(2)

prompt("Your monthly payment is $#{payment}")

prompt("After how many months, would you like to know your loan balance?")

months = gets.chomp.to_i

remaining_loan_balance = loan * ((1 + mir)**duration - (1 + mir)**months)
remaining_loan_balance /= ((1 + mir)**duration - 1)
remaining_loan_balance = remaining_loan_balance.round(2)

prompt("Your remaining loan balance is $#{remaining_loan_balance}")
