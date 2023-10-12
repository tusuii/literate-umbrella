# Given a number, return a list containing the two halves of the number. If the number is odd, make the rightmost number higher.

# Examples
# number_split(4) ➞ [2, 2]

# number_split(10) ➞ [5, 5]

# number_split(11) ➞ [5, 6]

# number_split(-9) ➞ [-5, -4]

def number_split(n):
	f = n//2
	if n % 2 == 0:
		return [f , f]
	else:
		return [f , f + 1]
	
	
print(number_split(4))  #[2, 2])
print(number_split(10))  #[5, 5])
print(number_split(11))  #[5, 6])
print(number_split(0))  #[0, 0])
print(number_split(1))  #[0, 1])
print(number_split(-4))  #[-2, -2])
print(number_split(-5))  #[-3, -2])
print(number_split(-9))  #[-5, -4]
