def display_menu():
	print("-"*30)
	print("   名片管理系统   v8.8")
	print("1、添加名片")
	print("2、删除名片")
	print("3、修改名片")
	print("4、查询名片")
	print("5、获取所有名片信息")
	print("6、退出系统")

def get_choice():
	selected_key=input("请输入选择的序号：")
	return int(selected_key)
def add_info():
	new_name=input("请输入姓名：")
	name_list.append(new_name)
def print_all_info(temp_list):
	print("="*30)
	for info in temp_list:
		print(info)
	print("="*30)

i=0
name_list=[]
while i<1:	
	display_menu()#打印菜单
	key=get_choice()#等待用户选择
	if key==1:
		add_info()
	elif key==2:
		pass
	elif key==3:
		pass
	elif key==4:
		pass
	elif key==5:
		print_all_info(name_list)
	elif key==6:
		pass
	else:
		print("输入错误，请重新输入...")



	