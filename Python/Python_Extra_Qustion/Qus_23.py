# 23. Write a Python function that takes a list of words and returns the length of the longest 
# one

list1=["apple",'Blackberry','Custard_Apple','Fig','Indian_Jujube','Banana']
len_W=[]

for i in list1:     
    len_W.append((len(i),i))
len_W.sort()
print(len_W)

result=len_W[-1]
print(result)






