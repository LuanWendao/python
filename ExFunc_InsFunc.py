def ExFunc(func):
	print("正在装饰")
	def InsFunc(a,b,c):
		print("正在验证权限")
		func(a,b,c)
	return InsFunc
@ExFunc
def test(a,b,c):
	print("test",a,b,c)
test(1,100,1000)
def foo():
	print("hello world in foo")
	def bar():
		print("hello world in bar")
	return bar
f1=foo()
f1()



