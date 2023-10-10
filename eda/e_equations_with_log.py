# Solving Exponential Equations With Logarithms
# Create a function that takes a number a and finds the missing exponent x so that a when raised to the power of x is equal to b.

# solve_for_exp(4, 1024) ➞ 5

# solve_for_exp(2, 1024) ➞ 10

# solve_for_exp(9, 3486784401) ➞ 10


def solve_for_exp(a, b):
	for i in range(1,b):
		if a ** i == b:
			return int(i)

from math import log
def solve_for_exp1(a, b):
	res = log(b,a)
	return int(res)

print(solve_for_exp(4, 1024) == solve_for_exp1(4, 1024))
print(solve_for_exp(2, 1024) == solve_for_exp1(2, 1024))
print(solve_for_exp(9, 3486784401) == solve_for_exp(9, 3486784401))
print(solve_for_exp(4, 4294967296) == solve_for_exp(4, 4294967296))
print(solve_for_exp(8, 134217728) == solve_for_exp(8, 134217728) )
print(solve_for_exp(19, 47045881) == solve_for_exp(19, 47045881))
print(solve_for_exp(10, 100000000) == solve_for_exp(10, 100000000))
