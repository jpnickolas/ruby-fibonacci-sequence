#!/usr/bin/env ruby

##
# returns a string with a certain amount of numbers in the fibonacci sequence
# depth - int: the number of integers printed
def fibonacci(depth)
	i=0
	start = ""
	while i<depth and i<2
		start=start+"1 "
		i+=1
	end
	return start+fibonacciRecurse(1,1,depth-2)
end

##
# recursively creates a string with the fibonacci sequence
# pre-condition: a and b are in the fibonacci sequence
# a - int: second to last number in the fibonacci sequence
def fibonacciRecurse(a,b,depth)
	if depth>0
		return String(a+b)+" "+fibonacciRecurse(b, a+b, depth-1)
	else
		return ""
	end
end


# prints out the fibonacci sequence for each command line argument sent
ARGV.each do|a|
	puts fibonacci(Integer(a))
end

