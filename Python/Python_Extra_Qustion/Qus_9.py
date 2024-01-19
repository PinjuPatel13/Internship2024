# 9. Write a Python program to sort Counter by value.
#  * Sample data : {'Math':81, 'Physics':83, 'Chemistry':87}
#  * Expected data: [('Chemistry', 87), ('Physics', 83), ('Math', 81)]


import collections
sample_data = {'Math':81, 'Physics':83, 'Chemistry':87}
frequencyDict = collections.Counter(sample_data)
print(frequencyDict)

