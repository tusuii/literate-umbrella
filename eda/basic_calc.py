#Create a function that takes two numbers and a mathematical operator + - / * and will perform a calculation with the given numbers.

# Examples
# calculator(2, "+", 2) ➞ 4

# calculator(2, "*", 2) ➞ 4

# calculator(4, "/", 2) ➞ 2

def calculator(num1, operator, num2):
	if operator == '+':
		return num1 + num2
	elif operator == '-':
		return num1 - num2
	elif operator =='*':
		return num1 * num2
	elif operator =='/':
		if num2 != 0:
			return num1 / num2
		else:
			return "Can't divide by 0!"


# method 2
def calculator1(num1, operator, num2):
    operations = {
        '+': num1 + num2,
        '-': num1 - num2,
        '*': num1 * num2,
        '/': num1 / num2 if operator == '/' and num2 != 0 else "Can't divide by 0!"
    }
    return operations.get(operator, "Invalid operator")
	
print(calculator(2, '/', 2) == calculator1(2, '/', 2)) #1)
print(calculator(10, '-', 7) == calculator1(10, '-', 7))  #3)
print(calculator(2, '*', 16) == calculator1(2, '*', 16))  #32)
print(calculator(2, '-', 2) == calculator1(2, '-', 2))  #0)
print(calculator(15, '+', 26) == calculator1(15, '+', 26))  #41)
print(calculator(2, '+', 2)  == calculator1(2, '+', 2))#4)
print(calculator(2, "/", 0)  == calculator1(2, "/", 0)) #"Can't divide by 0!")
