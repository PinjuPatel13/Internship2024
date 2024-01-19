# 8. Write a Python program to sort a list alphabetically in a dictionary.

unsorted_dict = {
    'fruits': ['banana', 'apple', 'orange'],
    'animals': ['dog', 'cat', 'elephant', 'zebra'],
    'countries': ['India', 'Japan', 'Canada', 'Brazil']
}
sorted_dict = {}
for key, value in unsorted_dict.items():
        sorted_dict[key] = sorted(value)


for key, value in sorted_dict.items():
    print(f"{key}: {value}")
    

print(sorted_dict)  


    






