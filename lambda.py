def func(a,b,oper):
	print("a=%d"%a)
	print("b=%d"%b)
	print("result=",oper(a,b))
func(22,33,lambda x,y:x+y)
func(22,33,lambda x,y:x-y)
#func(22,33,lambda x,y:x*y)
#func(22,33,lambda x,y:x%y)

students=[
{"name":"z张三","age":18},
{"name":"l李四","age":19},
{"name":"w王五","age":17}
]
students.sort(key=lambda x:x['name'])
print("按name排序后的结果为：",students)
students.sort(key=lambda x:x['age'])
print("按age排序后的结果为：",students)
