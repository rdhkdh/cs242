# Programming Assignment 4, Question 1
# Ridhiman Kaur Dhindsa, Roll no.210101088

from functools import lru_cache
from typing import List

class Solution:
    def coinChange(self, coins: List[int], amount: int) -> int:

        @lru_cache(None)
        def dfs(rem):
            if rem < 0:
                return -1
            if rem == 0:
                return 0
            min_cost = float('inf')
            for coin in coins:
                res = dfs(rem - coin)
                if res != -1:
                    min_cost = min(min_cost, res + 1)
            return min_cost if min_cost != float('inf') else -1

        return dfs(amount)

print()
print("       *** Coin Change Problem ***   ")
print()
amt=input("Enter amount: ")
amt=int(amt)
denominations= [1,5,10,20,25,50]
soln1= Solution()
min_no_coins= soln1.coinChange(denominations,amt)
print("Minimum number of coins required to make this sum = ",min_no_coins)
print()
print("       *** End of Program ***        ")