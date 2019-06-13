name="abcdef"
print(name[0:3])
print(name[3:5])
print(name[1:-1])
print(name[2:])
print(name[0:3])
print(name[::-2])

#find(sub,star,end)
string_example='hello world itheima and itheimapp'
index=string_example.find("itheima",0,len(string_example))
print(index)

#index(sub,star,end)
string_example='hello world itheima and itheimapp'
index1=string_example.index("itheima",0,len(string_example))
print(index1)

#count(sub,star,end)
string_example='hello world itheima and itheimapp'
result=string_example.count("itheima",0,len(string_example))
print(result)

#replace(old,new,count)
old_example='hello world itheima and itheimapp'
new_example=old_example.replace("itheima","ITHEIMA",1)
print(new_example)

#split(sep-None,maxsplit=-1)
string_example="this is string example....wow!!!"
print(string_example.split(' ',-1))
print(string_example.split('i',2))
print(string_example.split('w'))

#str.capitalize()
old_example='hello world itheima and itheimapp'
new_example=old_example.capitalize()
print(new_example)

#str.title()
old_example='hello world itheima and itheimapp'
new_example=old_example.title()
print(new_example)
