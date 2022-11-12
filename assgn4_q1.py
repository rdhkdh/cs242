# Programming Assignment 4, Question 1
# Ridhiman Kaur Dhindsa, Roll no.210101088

print()
print("       *** Change generating program ***          ")
print()
print("Denominations available = 1,5,10,20,25,50")

x= input("Enter monetary amount for which change has to be provided: " )
x=int(x)

print()

count = 0  # no of coins to be returned to user
denom= [50,25,20,10,5,1]
for i in denom:
    print((x//i)," coins of denomination ",i)
    count += (x//i)
    x=x%i

print("Minimum number of coins to be returned = ",count)
print()
print("            *** End of Program ***            ")
print()