# 7. Write a Python program to convert a list into a nested dictionary of keys.


keys_list = ['a', 'b', 'c']
value = 42
dict1 = dict2 = {}
for key in keys_list:
    dict1=dict1.setdefault(key,{})

dict1[keys_list[-1]]=value
print(dict2)









