# 17. Write a Python program to get the frequency of the elements in a list

import collections

myList = [1, 2, 3, 4, 1, 3, 46, 7, 2, 3, 5, 6, 10]
frequencyDict = collections.Counter(myList)

print(frequencyDict)
