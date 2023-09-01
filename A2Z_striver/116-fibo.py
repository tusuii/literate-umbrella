n = int(input())
a,b = 1,1
for i in range(1,n):
    c = a+b
    a=b
    b=c
print(a)
