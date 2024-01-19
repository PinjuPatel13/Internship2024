# 1. Write a Python script to generate and print a dictionary that contains a number (between 
# 1 and n) in the form (x, x*x)
#  * Sample Dictionary ( n = 5) : 
#  * Expected Output : {1: 1, 2: 4, 3: 9, 4: 16, 5: 25}


# n = 5
# print({x: x*x for x in range(1, n+1)})

# dict = {}
# for i in range(1, n+1):
#     dict[i] = i*i

# print(dict)

def squreInt(n):
    return {i: i*i for i in range(1, n+1)}

number = int(input("Enter a number : "))
print(squreInt(number))

# print({i: i*i for i in range(1, n+1)})

