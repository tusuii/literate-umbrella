from math import pi

def degrees_to_radians(rad):
	res = round(rad * (180/pi) ,2)
	return res
	
print(degrees_to_radians(1))
print(degrees_to_radians(20))
print(degrees_to_radians(50))
