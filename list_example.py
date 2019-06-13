#list
list_example=['xiaoWang','xiaoZhang','xiaoHua']

for name in list_example:
	print(name)

names_list=['xiaoWang','xiaoZhang','xiaoHua']
length=len(names_list)
i=0
while i<length :
	print(names_list[i])
	i+=1

#tuple
tuple_one=('physics', 'chemistry', 1997,2000)
tuple_two=(1,2,3,4,5);
tuple_three='a','b','c','d'
tuple_four=tuple_one + tuple_two + tuple_three
print(tuple_four)
for tupler in tuple_four:
	print(tupler,end='  ')
print()
length=len(tuple_four)
i=0
while i<length:
	print(tuple_four[i],end='  ')
	i+=1
