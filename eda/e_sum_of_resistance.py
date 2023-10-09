# series_resistance([1, 5, 6, 3]) ➞ "15 ohms"

# series_resistance([16, 3.5, 6]) ➞ "25.5 ohms"

# series_resistance([0.5, 0.5]) ➞ "1.0 ohm"

def series_resistance(lst):
	res = 0
	for i in lst:
		res = res + i
	return (f"{res} ohms\n")
	
from functools import reduce
def series_resistance1(lst):
	res = reduce(lambda x,y : x + y, lst)
	return (f"{res} ohms\n")

print(series_resistance([1, 5, 6, 3]))
print(series_resistance([0.2, 0.3, 0.4]))
print(series_resistance([10,12, 1, 10]))
print(series_resistance([10,13, 3.8, 20, 10]))
print(series_resistance([0.5, 0.5]))
print(series_resistance([16, 30, 22.8, 4]))
print(series_resistance([20, 15, 32.5, 2]))
print(series_resistance([52, 22, 20, 30]))
print(series_resistance([10, 12, 32, 4.9, 5, 6, 71]))

print("""
using lambda method
""")
print(series_resistance1([1, 5, 6, 3]))
print(series_resistance1([0.2, 0.3, 0.4]))
print(series_resistance1([10,12, 1, 10]))
print(series_resistance1([10,13, 3.8, 20, 10]))
print(series_resistance1([0.5, 0.5]))
print(series_resistance1([16, 30, 22.8, 4]))
print(series_resistance1([20, 15, 32.5, 2]))
print(series_resistance1([52, 22, 20, 30]))
print(series_resistance1([10, 12, 32, 4.9, 5, 6, 71]))
