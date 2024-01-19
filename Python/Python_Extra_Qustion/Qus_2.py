# 2. Write a Python program to combine two dictionary adding values for common keys
#  * d1 = {'a': 100, 'b': 200, 'c':300}
#  * d2 = {'a': 300, 'b': 200, 'd':400}
#  * Sample output: Counter({'a': 400, 'b': 400, 'd': 400, 'c': 300})

# result_dict = {}
# for key in set(dict1.keys()) | set(dict2.keys()):
#         value1 = dict1.get(key, 0)
#         value2 = dict2.get(key, 0)
#         result_dict[key] = value1 + value2

# print (result_dict)


# print({key: dict1.get(key, 0) + dict2.get(key, 0) for key in set(dict1.keys())|set(dict2.keys()) })


def sumTwoValueDict(dict1,dict2):
    return {key: dict1.get(key, 0) + dict2.get(key, 0) for key in set(dict1.keys())|set(dict2.keys()) }

dict1 = {'a': 100, 'b': 200, 'c': 300}
dict2= {'a': 300, 'b': 200, 'd': 400}
print(sumTwoValueDict(dict1,dict2))

