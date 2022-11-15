# Programming Assignment 4, Question 1
# Ridhiman Kaur Dhindsa, Roll no.210101088

from functools import lru_cache
from typing import List

class Solution:
    def coinChange(self, coins: List[int], amount: int) -> int:

        @lru_cache(None) #helps in reducing the execution time of the function by using memoization technique
        def dfs(S):
            if S < 0:
                return -1 # dfs exits that branch if S-C<0
            if S == 0:
                return 0
            min_cost = float('inf') #setting min_cost to an infinte value
            for c in coins:
                S1 = dfs(S - c)
                if S1 != -1:
                    min_cost = min(min_cost, S1 + 1)
            return min_cost if min_cost != float('inf') else -1
            #returns min_cost if finite, else it returns -1

        return dfs(amount)

print()
print("       *** Coin Change Problem ***   ")
print()
print("Denominations available = 1,5,10,20,25,50")
x=input("Enter monetary amount for which change has to be provided: ")
x=int(x)    # converting string to integer
amt=x

if amt<=475:   #using dynamic programming when x<=475
    denominations= [1,5,10,20,25,50]
    print()
    soln1= Solution() #creating object instance of class 'Solution'
    min_no_coins= soln1.coinChange(denominations,x)
    print("Minimum number of coins required to make this sum = ",min_no_coins)


# using greedy approach when x>475 

if (x%50 != 40) :
    count = 0  # no of coins to be returned to user
    denom= [50,25,20,10,5,1]
    for i in denom:
        print((x//i)," coins of denomination ",i)
        count += (x//i)
        x=x%i
else:
    print( (x-40)//50, " coins of denomination 50" )
    print("0 coins of denomination 25 ")
    print("2 coins of denomination 20 ")
    print("0 coins of denomination 10 ")
    print("0 coins of denomination 5 ")
    print("0 coins of denomination 1 ")
    count= 2+ ((x-40)//50)

if amt>475:
    print("Minimum number of coins to be returned = ",count)

print()
print("       *** End of Program ***        ")
