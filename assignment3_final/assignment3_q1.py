# Programming Assignment 3, Question 1
# Ridhiman Kaur Dhindsa, Roll no.210101088

print("\n     *** Josephus Problem ***       \n")

n=input("Enter n: ") #takes string input
n=int(n) #have to convert n to integer
while(n>26):
    n=input("Invalid input. Enter n less than 26: ")
    n=int(n)

k= input("Enter k: ") 
k=int(k) #have to convert k to integer
while(k<0):
    k=input("Invalid input. Enter k>=0: ")
    k=int(k)


def increment(x,amt,y):
    x=(x+amt)%y
    return x

list1= []

for i in range(0,n):
    list1.append(chr(i+65))

print("List of people:")
print(list1)
print("\nOrder of execution:")

index=0

while(len(list1)!=1):
    index= increment(index,k,n)
    print (list1[index])
    del list1[index]
    n=n-1

print()
print(list1[0], "survives.\n")

print()
print("     *** End of Program ***      \n")