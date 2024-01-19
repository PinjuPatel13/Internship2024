# 13. Write a Python function that takes two lists and returns True if they have at least one 
# common member

def checkCommonMember(list1,list2):
     return bool(l1.intersection(l2))

list1=[1,2,3,4]
list2=[0,5,6,7]

l1=set(list1)
l2=set(list2)

# print(bool(l1.intersection(l2)))

result = checkCommonMember(l1,l2)
print(result)

