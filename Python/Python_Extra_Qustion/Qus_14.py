# 14. Write a Python program to get the difference between the two lists

list1=[1,2,3,4,1,6,5,4,3,2,10,11,12,13]
list2=[2,3,4,1,5,6,4,6,7]

l1=set(list1)
l2=set(list2)

list3 = list(l1-l2)
print(list3)
