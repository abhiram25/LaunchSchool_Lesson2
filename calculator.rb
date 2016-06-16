# ask the user for two numbers
# ask for the type of operation to perform: add, subtract, multiply, and divide
# perform operation based on the input
# display the result
# START
# PRINT Type the first number
# GET the first number values and SET it to a variable
# PRINT Type the second number
# GET the second number value and SET it to a variable
# PRINT which operation would you like to perform
# GET the operation
# SET result to the following cases
# IF operation is add, add the two numbers
# IF operation is subtract, subtract the two numbers
# IF operation is multiply, multiply the two numbers
# If operation is divide, turn the numbers into floats and then divide
# PRINT result

Kernel.puts("Type the first number")

a = gets.chomp

Kernel.puts("Type the second number")

b = gets.chomp

Kernel.puts("Which operation would you like to perform?")

operation = gets.chomp

result = case operation
         when "add"
           a.to_i + b.to_i
         when "subtract"
           a.to_i - b.to_i
         when "multiply"
           a.to_i * b.to_i
         when "divide"
           a.to_f / b.to_f
         end

Kernel.puts(result)
  