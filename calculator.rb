#asks user for two numbers
#asks for the type of operation to perform
#perform operation
#display result

Kernel.puts("What is the first number?")
a = Kernel.gets().chomp()
Kernel.puts("The number is " + a)
Kernel.puts("What is the second number?")
b = Kernel.gets().chomp()
Kernel.puts("The number is " + b)

puts "Would you like to add, subtract, divide, or multiply these two numbers?"

operation = Kernel.gets().chomp()

	if operation == "subtract"
		result = a.to_i-b.to_i
	elsif operation == "divide"
		result = a.to_f/b.to_f
	elsif operation == "add"
		result = a.to_i+b.to_i
	elsif operation == "multiply"
		result = a.to_i*b.to_i
	end

	puts result

		



