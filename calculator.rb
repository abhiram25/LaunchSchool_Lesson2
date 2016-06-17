require 'pry'

def prompt(message)
  puts "=> #{message}"
end

# def valid_number?(number)
#   if number =~ /0/
#     number.to_i
#   else
#     number.to_i != 0
#   end
# end


def number?(number)
  if number.include?(".")
    number.to_f
  else
    number.to_i
  end

  if number =~ /0/
    number.to_i
  else
    number.to_i != 0
  end
end

def operation_to_message(op)
  word = case op
         when 'add'
           'Adding'
         when 'subtract'
           'Subtracting'
         when 'multiply'
           'Multiplying'
         when 'divide'
           'Dividing'
         end

  puts word.to_s
  word
end

prompt("Welcome to calculator, Enter your name:")

name = ''
loop do
  name = gets.chomp

  if name.empty?()
    puts "Please enter a name"
  else
    break
  end
end

prompt("Hello #{name}")

loop do
  number1 = ''
  loop do
    prompt("Type the first number")
    number1 = gets.chomp

    if number?(number1)
      break
    else
      prompt("Not a valid number, try again")
    end
  end

  number2 = ''

  loop do
    prompt("Type the second number")
    number2 = gets.chomp

    if number?(number2)
      break
    else
      prompt("Not a valid number, try again")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operation = ''
  loop do
    operation = gets.chomp

    if %w(add subtract multiply divide).include?(operation)
      break
    else
      prompt("Please type in a valid operation")
    end
  end

  prompt("#{operation_to_message(operation)} the two numbers...")

  result = case operation
           when "add"
             number1.to_i + number2.to_i
           when "subtract"
             number1.to_i - number2.to_i
           when "multiply"
             number1.to_i * number2.to_i
           when "divide"
             number1.to_f / number2.to_f
           end

  prompt("The answer is #{result}")

  prompt("Do you want to do another calculation?")
  decision = gets.chomp
  break unless decision.downcase.start_with?('y')
end

prompt("Thank you for using calculator, goodbye!")
