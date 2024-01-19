# 18. Write a Python program to convert a list of multiple integers into a single integer
#  * Sample list: [11, 33, 50]
#  * Expected Output: 113350

list1 = [11, 33, 50]
x = int("".join(map(str, list1)))
print("Single Integer: ",x)


