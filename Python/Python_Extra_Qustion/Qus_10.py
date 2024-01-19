# 10. Write a Python program to match key values in two dictionaries. Go to the editor
#  * Sample dictionary: {'key1': 1, 'key2': 3, 'key3': 2}, {'key1': 1, 'key2': 2}
#  * Expected output: key1: 1 is present in both x and y

def match_key_values(dict1, dict2):
    common_keys = set(dict1.keys()) & set(dict2.keys())
    common_items = [(key, dict1[key]) for key in common_keys if dict1[key] == dict2.get(key)]
    return common_items


x = {'key1': 1, 'key2': 3, 'key3': 2}
y = {'key1': 1, 'key2': 2}

common_items = match_key_values(x, y)
for key, value in common_items:
        print(f"{key}: {value} is present in both x and y")
