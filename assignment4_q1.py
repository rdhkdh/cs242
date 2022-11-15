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
amt=input("Enter amount: ")
amt=int(amt)
denominations= [1,5,10,20,25,50]

soln1= Solution() #creating object instance of class 'Solution'
min_no_coins= soln1.coinChange(denominations,amt)
print("Minimum number of coins required to make this sum = ",min_no_coins)
print()
print("       *** End of Program ***        ")