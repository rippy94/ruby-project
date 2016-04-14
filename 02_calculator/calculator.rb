def add(a,b)
	a + b
end

def subtract(a,b)
	a - b
end

def sum(numbers)
	result = 0
	numbers.each do |n|
		result = result + n
	end
	result
end

def multiply(*numbers)
	numbers.reduce(1,:*)
end

def power(a,b)
	a**b
end

def factorial(n)
	return 1 if n == 0 || n == 1
	result = n
	(n-1).times do |i|
		result = result *  (n- (i+1))
	end
	result
end

factorial(5)