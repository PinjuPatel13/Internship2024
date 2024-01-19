# 21. Write a Python program to count the number of characters (character frequency) in a 
# string 
#  * Sample String : google.com'
#  * Expected Result : {'o': 3, 'g': 2, '.': 1, 'e': 1, 'l': 1, 'm': 1, 'c': 1}

sample_String = 'google.com'

import collections
l1=collections.Counter(sample_String)
print(l1)