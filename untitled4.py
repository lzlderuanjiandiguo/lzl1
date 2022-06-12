import sqlite3

# 连接数据库(如果不存在则创建)
conn = sqlite3.connect('text.db')
print("Opened database successfully")

# 创建游标
cursor = conn.cursor()
# 关闭游标
cursor.close()
# 提交事物
conn.commit()

#关闭游标
cursor.close()

#关闭连接
conn.close()
# 连接数据库(如果不存在则创建)
conn = sqlite3.connect('text.db')

# 创建游标
cursor = conn.cursor()

# 创建表
symbol = 'Areatype'
try:
    cursor.execute('create table IF NOT EXISTS %s(id integer PRIMARY KEY autoincrement, Name  varchar(30))'%symbol)
    conn.commit()
    pass
except Exception as e:
    print(e)
    print("Create table failed")

 
content_list=[]
with open('text.txt','r',encoding='utf-8') as f1:
    content = f1.read()
    print(content)
 

# 提交事物
conn.commit()

#关闭游标
cursor.close()

#关闭连接
conn.close()