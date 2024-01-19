# 19. Write a Python program to compute the similarity between two lists.
#  * Sample data: ["red", "orange", "green", "blue", "white"], ["black", "yellow", "green", 
# "blue"]
#  * Expected Output: 
#  * Color1-Color2: ['white', 'orange', 'red']
#  * Color2-Color1: ['black', 'yellow']

sample_data1 = ["red", "orange", "green", "blue", "white"]
sample_data2 = ["black", "yellow", "green", "blue"]

l1=set(sample_data1)
l2=set(sample_data2)

diffrence1 = list(l1-l2)
diffrence2 = list(l2-l1)

print("color1-color2",diffrence1)
print("color2-color1",diffrence2)