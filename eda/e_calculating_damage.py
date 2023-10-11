# Create a function that takes damage and speed (attacks per second) and returns the amount of damage after a given time.

#Examples
# damage(40, 5, "second") ➞ 200

# damage(100, 1, "minute") ➞ 6000

# damage(2, 100, "hour") ➞ 720000

def damage(damage, speed, time):
	if damage < 0 or speed < 0:
		return "invalid"
	if time == "second":
		return damage * speed
	elif time == "minute":
		return damage * speed * 60
	elif time == "hour":
		return damage * speed * 60 * 60
	

print(damage(40, 5, "second"))  #200)
print(damage(100, 1, "minute"))  #6000)
print(damage(2, 100, "hour"))  #720000)
print(damage(20, 0.5, "minute"))  #600)
print(damage(2, 400, "hour"))  #2880000)
print(damage(-23, 20, "second"))  #"invalid")
print(damage(-23, -5, "second"))  #"invalid")
print(damage(20, -492321, "hour"))  #"invalid")
