# 22. Write a Python program to get a string from a given string where all occurrences of its 
# first char have been changed to '$' ,except the first char itself
#  * Sample String : 'restart'
#  * Expected Result : 'resta$t'

str1="restart"

char=str1[0]
l1=str1.replace(char,"$")
l1=char+l1[1:]
print(l1)


def change_char(str1):
  char = str1[0]
  str1 = str1.replace(char, '$')
  str1 = char + str1[1:]

  return str1

print(change_char('restart'))



