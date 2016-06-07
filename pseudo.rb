#Casual

=begin
	
1. 

Write out a method which takes two numbers 

adds those numbers together

return the value

START 

1. define your method

SET your parameters in your method

Given the two variables in your parameter

SET a variable to add the variables in the parameter together

PRINT the RESULT

2. START
	
	SET your array

	SET a new variable which will join the strings in the array together

	PRINT the new array variable

3.  Given the array of integers provided, 

	Set a new array of integers outside of the iteration through the array
	and iterate through the array every two times and store that given value in the new array
=end 


a = [2,4,6,9,5]

def ev_two(array)
	new_arr = []
	i = 0
	for i in array
		new_arr.push(array[i])
		i+=2
	end
	p new_arr
end

ev_two(a)





