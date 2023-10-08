# is_curzon(5) ➞ True
# 2 ** 5 + 1 = 33
# 2 * 5 + 1 = 11
# 33 is a multiple of 11

#is_curzon(10) ➞ False
# 2 ** 10 + 1 = 1025
# 2 * 10 + 1 = 21
# 1025 is not a multiple of 21

#is_curzon(14) ➞ True
# 2 ** 14 + 1 = 16385
# 2 * 14 + 1 = 29
# 16385 is a multiple of 29


def is_curzon(num):
	res = True if ((2 ** num + 1) % (2 * num + 1)) ==0 else False
	return res
	
print(is_curzon(5))
print(is_curzon(10))
print(is_curzon(14))
print(is_curzon(86))
print(is_curzon(90))
print(is_curzon(115))
print(is_curzon(120))
print(is_curzon(194))
print(is_curzon(293))
