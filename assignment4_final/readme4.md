# Programming Assignment 4
### **Name:** Ridhiman Kaur Dhindsa, **Roll No.** 210101088

**Date:** 15 November 2022  
**Description:** This file is a readme text for programming assignment 4.

## Question 1: Coin Change Problem
**Files used:** assignment4_q1.py  

**How to execute:**  
  
**Steps:**
1) Open the Linux terminal in the directory where the Python file is stored. 
2) Type the command and press Enter:   
``` python assignment4_q1.py``` 

**Explanation:**  
The solution is based on Dynamic Programming- which optimizes the program as a whole, rather than the Greedy algorithm approach, which only performs local optimization. In this approach, let S be the total sum for which change is needed. And let C be the last coin's denomination. Let F(S) represent the minimum number of coins needed to produce the sum S. Then we can use the recursion F(S)=F(S-C)+1 for analysis. We have to recursively minimze F(S-C) whenever S > C.   
The idea of the algorithm is to build the solution of the problem from top to bottom. It applies the idea described above. It use backtracking and cuts the partial solutions in the recursive tree, which don't lead to a viable solution. Тhis happens when we try to make a change of a coin with a value greater than the amount S. To improve time complexity we store the solutions of the already calculated subproblems in a table.  
lru_cache() helps in reducing the execution time of the function by using memoization technique. DFS is applied on each viable value of S, and those branches are cut off wherein S-C < 0.
> **Note:** The recursion stack has a capacity of maximum 10 recursive calls, therefore inputs <= 475 are preferred for the DP approach. For larger inputs, we calculate using the Greedy approach. 

## Question 2: Latex script
**Files used:** assignment4_q2i.tex, assignment4_q2ii.tex  

**How to execute:**  
  
**Steps:**   
1) Open the LaTeX File in TexMaker (a cross-platform open-source LaTeX editor with an integrated PDF viewer). 
2) Then run the .tex file to obtained the rendered .pdf file.

_The same can be done in VS Code also, if the LaTeX extension is installed:_  
1) Open the LaTeX File in VS Code. 
2) In the top bar, click 'Build Latex Project' or press 'Ctrl+Alt+B'.
3) In the top bar, click 'View Latex PDF file' or press 'Ctrl+Alt+V'.

> **Note:** The final output PDFs have been included in the submitted folder.

### **Explanation:**  
1) LaTeX syntax is used to generate the PDF provided in the question. The packages used are- 'mathstools' and 'amsmath' for mathematical equations, and 'hyperref' for creating blue coloured hyperlinks for equation referencing. Inline math is written using single dollar signs. The word LaTeX is written in its trademark font. The 'equation' tag is used for giving a maths equation separate space. The 'align' environment is used when multiple labelled eqautions need to be aligned. Equation references 'eqref' can be used with the equation numbers. The 'matrix' environment is used for creating a matrix.    
2) LaTeX syntax is used to generate the PDF provided in the question. The packages used are- 'mathstools' and 'amsmath' for mathematical equations, and 'chemist' for typing chemical equations. 'showonlyrefs' tag is used for removing equation numbers in the general case, and displaying it only when a reference to the equation is made. 'int' tag is used for the integral sign and 'lim' for limit. For multiple conditions in one equation, 'cases' environment is used. The 'matrix' environment is used for creating a matrix. In the end, for writing small greek alphabets, the name is written as a tag. But for writing capital Greek alphabets, the first letter has to be capitalized.  