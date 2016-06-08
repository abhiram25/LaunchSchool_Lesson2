require 'pry'

# asks user for two numbers
# asks for the type of operation to perform
# perform operation
# display result



def prompt(message)
	 Kernel.puts("=> " + message)
end

def valid_number?(num)

	 if num.include?("0")
	 	num.to_i()
	 else
	 	num.to_i() != 0
	 end
end

def operation_to_message(op)
	 case op
	 when "add"
	 "adding"
	 when "subtract"
	 "subtracting"
	 when "divide"
	 "dividing"
	 when "multiply"
	 "multiplying"
	 end
end

prompt("Enter your name")

name = ''
loop do
	 name = Kernel.gets().chomp()

	 if name.empty?()
	  prompt("Make sure to use a valid name.")
	 else 
		break
	end
end


loop do
  prompt("Hello #{name}")
a = ''
loop do
prompt("What is the first number?")
a = Kernel.gets().chomp()

if valid_number?(a)
	break
else
	prompt("invalid number. Try again")
end
end

prompt("The number is #{a}")

b = ''
loop do
prompt("What is the second number?")
b = Kernel.gets().chomp()
if valid_number?(b)
	break
else
	prompt("invalid number. Try again")
end
end



prompt("The second number is " + b)

operator_prompt = <<-MSG
Would you like to
1). add
2). subtract
3). multiply
4). divide

MSG

prompt(operator_prompt)

operation = ''
loop do
operation = Kernel.gets().chomp()

if %w(add subtract divide multiply).include?(operation)
	break
else
	prompt("invalid operator try again")
end
end
	# if operation == "subtract"
	# 	result = a.to_i-b.to_i
	# elsif operation == "divide"
	# 	result = a.to_f/b.to_f
	# elsif operation == "add"
	# 	result = a.to_i+b.to_i
	# elsif operation == "multiply"
	# 	result = a.to_i*b.to_i
	# end

	result = case operation
	when "subtract"
		a.to_i-b.to_i
	when "divide"
		a.to_f/b.to_f
	when "add"
		a.to_i+b.to_i
	when "multiply"
		a.to_i*b.to_i
	end

	prompt("#{operation_to_message(operation)} the two numbers")
	prompt("=> " + result.to_s)
	prompt("Do you want to perform another calculation?")
	dec = Kernel.gets().chomp()

	break unless dec.downcase().start_with?("y") 
end
prompt("Thank you for using the calculator. Good bye!")
		



