# 6. Write a Python program to count the values associated with key in a dictionary.
#  * Sample data: = [{'id': 1, 'success': True, 'name': 'Lary'}, {'id': 2, 'success': False, 'name': 
# 'Rabi'}, {'id': 3, 'success': True, 'name': 'Alex'}]
#  * Expected result: Count of how many dictionaries have success as True

sample_data = [{'id': 1, 'success': True, 'name': 'Lary'}, {'id': 2, 'success': False, 'name': 
'Rabi'}, {'id': 3, 'success': True, 'name': 'Alex'}]


#for i in sample_data:
   # print(i)

#print(sample_data[0]['success'])
count = 0
count+=1
# for i in range(0,len(sample_data)):
#     if (sample_data[i]['success'])==True:
#         count += 1
# print("Total number of Success tree is :",count)


# print(sum(count  for i in range(0,len(sample_data))  if (sample_data[i]['success'])==True ) )   

def countSuccess(n):
    return sum(count  for i in range(0,len(sample_data))  if (sample_data[i]['success'])==True)

print(countSuccess(sample_data))

    