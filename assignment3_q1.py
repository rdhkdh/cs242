n=input("Enter n: ") #takes string input
k= input("Enter k: ") 

#have to convert to int
n=int(n)
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

while(len(list1)!=0):
    index= increment(index,k,n)
    print( list1[index] )
    del list1[index]
    n=n-1

