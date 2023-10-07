def discount(price,discount):
	res = price - (discount / 100) * price
	return res
	
print(round(discount(1500,50),2))
print(round(discount(89,20),2))
print(round(discount(100,25),2))
