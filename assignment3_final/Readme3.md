# Programming Assignment 3
### **Name:** Ridhiman Kaur Dhindsa, **Roll No.** 210101088

**Date:** 14 October 2022  
**Description:** This file is a readme text for programming assignment 3.

## Question 1: Josephus Problem
**Files used:** assignment3_q1.py  

**How to execute:**  
  
**Steps:**
1) Open the Linux terminal in the directory where the Python file is stored. 
2) Type the command and press Enter:   
``` python assignment3_q1.py``` 

**Explanation:**  
>First we take input of n= Number of people standing in the circle, and k= Skip number. Accordingly we create a list of persons in the range [A-Z] as specified in the question. 'chr()' function is used to get character output of corresponding ASCII code. Next, to decide the order of execution, we use the 'increment' function. It returns the remainder of ('current index' + k) with respect to the number of people currently present in the circle (updated value of n). In the while loop, after incrementing the index, the element is deleted and value of n is decremented. The last person in the circle is the survivor of the Josephus Problem.

## Question 2: 8-Puzzle Problem
**Files used:** assignment3_q2.py, sample_input.txt  

**How to execute:**  
  
**Steps:**   
1) Open the Linux terminal in the directory where the Python file is stored.
2) Type the command and press Enter:   
``` python assignment3_q2.py```
3) Format of input: Enter each tile value separately in a new line.   
For eg: The matrix   
1 2 3   
4 5 6  
7 8 0   
will be entered as:  
1  
2  
3  
4  
5  
6  
7  
8  
0  

### **Explanation:**  
> We solve the 8 Puzzle Problem using the A* search algorithm,which is a recursive algorithm that calls itself until a solution  is found. The Manhattan Distance heuristic is used as the cost function here. Manhattan distance heuristic function measures the least steps needed for each of the tiles in the 8-puzzle current state to arrive to the goal state position.  It is calculated as the difference between goal and initial positions of a tile, summed over all tiles from 1-8.  
For each of the nodes we have implemented the cost function as f(n)= g(n)+h(n), where g(n) is the depth of current node and h(n) is the Manhattan distance.  
Each of the states is explored using priority queue, which stores the position and f(n) value as key-value pair. Then using merge sort technique, the priority queue is sorted and the next node to be explored is selected based on the least f(n) value.

**List of Functions:**

**bestsolution()**= Takes input of current state of process, and appends the most optimum matrix (having least f(n) value) to the array 'bestsol'.

**all()**= Takes input of an array, and returns 1 when the state has been visited before.

**manhattan()**= Takes input of puzzle and goal matrix, and calculates Manhattan Distance as difference between goal and initial positions of a tile, summed over all tiles from 1-8.

**coordinates()**= This function assigns an integer value as coordinates to any input that has been passed as the parameter, and returns the single integer value of the state.

**evaluate()**=   
This function solves the 8-puzzle problem using Manhattan heuristic. We define the steps that can be taken in a particular state along with their coordinates (0 can be moved up, down, left, right). Then initialize parent of node, g(n), h(n). In this function; g(n), h(n) and f(n) are calculated and a priority queue is used to store the node's f(n) value and position value as a key-value pair. We use the merge sort technique to find the least cost node and explore that node first if it hasn’t already been visited.  

Since this node is to be explored, a copy of it is created using deepcopy function. We call all() to check for repeats, i.e, already visited nodes. We identify the blank tile and then check for the next available steps.Then Manhattan distance and depth are calculated for each of the child nodes and next optimum node is selected. This process is repeated recursively until it matches the goal state.

>Here, f(n)= g(n)+h(n), and h(n) calculates the sum of number of steps each tile in the current state needs to take to reach to goal state. g(n) is the step cost of each step made.  

**Main Program:**

First, user input of initial and goal state is taken in list form and converted to matrix form. Then 'evaluate' function is applied on the puzzle and goal matrices. Then the list 'bestpath' (which is a list of configurations on the most optimum path), is printed. The total moves in this process is = (length of most optimum path-1). The total nodes visited and total nodes generated in the process are also printed. The puzzle is indicated as unsolvable, when the time take in the process is more than 2 minutes.