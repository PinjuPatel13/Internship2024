# 5. Write a Python program to create a dictionary from a string.
#  * Note: Track the count of the letters from the string.
#  * Sample string : 'w3resource'
#  * Expected output: {'3': 1, 's': 1, 'r': 2, 'u': 1, 'w': 1, 'c': 1, 'e': 2, 'o': 1}

# sample_string = 'w3resource'
# list1={}
# for i in sample_string:
#     a=(i)
#     print(list(a))

# for char in sample_string:
#     list1[char]=list1.get(char,0)+1
# print(list1)


# print({char:list1.get(char,0)+1 for char in sample_string }) 
    

def countCharInputString(n):
    return  {char:list1.get(char,0)+1 for char in sample_string }

sample_string = 'w3resource'
list1={}

print(countCharInputString(list1))
