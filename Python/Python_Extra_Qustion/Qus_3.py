# 3. Write a Python program to print all unique values in a dictionary
#  * Sample Data : [{"V":"S001"}, {"V": "S002"}, {"VI": "S001"}, {"VI": "S005"}, {"VII":"S005"}, 
# {"V":"S009"},{"VIII":"S007"}]
#  * Expected Output : Unique Values: {'S005', 'S002', 'S007', 'S001', 'S009'}

# l = []
# for i in sample_data:
#     for key in i.keys():
#         value = i.get(key)
#         l.append(value)

# print(set(l))

# print(set([i.get(key) for i in sample_data for key in i.keys()]))

def uniqeValueSearch(n):
    return (set([i.get(key) for i in n for key in i.keys()]))

sample_data = [{"V":"S001"}, {"V": "S002"}, {"VI": "S001"}, {"VI": "S005"}, {"VII":"S005"}, 
 {"V":"S009"},{"VIII":"S007"}]

print(uniqeValueSearch(sample_data))