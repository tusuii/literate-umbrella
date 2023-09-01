# using whi;le loop
n = input()
val1 = 0
val2 = 0
i = 0

while i < len(n):
    if int(n[i]) % 2 == 0:
        val1 += int(n[i])
    else:
        val2 += int(n[i])
    i += 1
print(val1, val2)

# using for loop
n = input()

val1 = 0
val2 = 0

for i in range(0,len(n)):
    if int(n[i]) % 2 == 0:
        val1 = val1 + int(n[i])
    else:
        val2 = val2 + int(n[i])
print(val1, val2)
