# Create a function that takes an integer and returns the factorial of that integer. That is, the integer multiplied by all positive lower integers.

# Examples
# factorial(3) ➞ 6

# factorial(5) ➞ 120

# factorial(13) ➞ 6227020800

def factorial(num):
	if num == 1:
		return 1
	else:
		return num * factorial(num -1)
	
print(factorial(2))  #2)
print(factorial(6))  #720)
print(factorial(3))  #6)
print(factorial(12))  #479001600)
print(factorial(5))  #120)
