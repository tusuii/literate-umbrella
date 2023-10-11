#Create a function that takes the number of daily average recovered cases recovers, daily average new_cases, current active_cases, and returns the number of days it will take to reach zero cases.

#Examples
#end_corona(4000, 2000, 77000) ➞ 39

#end_corona(3000, 2000, 50699) ➞ 51

#end_corona(30000, 25000, 390205) ➞ 79

def end_corona(recovers, new_cases, active_cases):
	total = 0
	while active_cases > 0:
		active_cases = active_cases + new_cases - recovers
		total = total +1
	return total

print(end_corona(4000, 2000, 77000))  #39)
print(end_corona(3000, 2000, 50699))  #51)
print(end_corona(30000, 25000, 390205))  #79)
print(end_corona(260000, 255000, 20511691))  #4103)
