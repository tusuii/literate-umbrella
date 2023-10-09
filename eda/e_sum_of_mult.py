# multi_sum(1) ➞ 55
# 1 x 1 + 1 x 2 + 1 x 3 ...... 1 x 9 + 1 x 10 = 55

# multi_sum(6) ➞ 330
# 6 x 1 + 6 x 2 + 6 x 3 ...... 6 x 9 + 6 x 10 = 330

# multi_sum(10) ➞ 550

# multi_sum(8) ➞ 440

# multi_sum(2) ➞ 110

# normal loop method
def multi_sum(n,ten = 10):
	total = 0
	for i in range(1,11):
		total = total + i * n
	return total
				
# recursion method
def multi_sum1(n, ten = 10):
	if ten == 1:
		return n
	return n * ten + multi_sum1(n,ten - 1)
	

print(multi_sum(1) == multi_sum1(1))
print(multi_sum(3) == multi_sum1(3))
print(multi_sum(2) == multi_sum1(2))
print(multi_sum(4) == multi_sum1(4))
print(multi_sum(5) == multi_sum1(5))
print(multi_sum(6) == multi_sum1(6))
print(multi_sum(7) == multi_sum1(7))
print(multi_sum(8) == multi_sum1(8))
print(multi_sum(9) == multi_sum1(9))
print(multi_sum(10) == multi_sum1(10))
