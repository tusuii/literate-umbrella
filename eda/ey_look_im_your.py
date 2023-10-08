def relation_to_luke(name):
	stat = "Luke, I am your "
	if name == "Darth Vader":
		return (f"{stat } father.")
	elif name == "Leia":
		return (f"{stat } sister.")
	elif name == "Han":
		return (f"{stat } brother in law.")
	else:
		return(f"{stat } droid.")
		
print(relation_to_luke("Darth Vader"))
print(relation_to_luke("Leia"))
print(relation_to_luke("Han"))
print(relation_to_luke("R2D2"))
