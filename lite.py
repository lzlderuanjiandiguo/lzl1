# -*- coding: utf-8 -*-
"""
Created on Thu Jun  9 11:11:52 2022

@author: clauddddy
"""

#1.SQlite原生类型：BLOB对应python的bytes字节码
'''

'''
import sys
import sqlite3
import base64
import cv2
import numpy as np
print("python版本：",sys.version)#3.6.8 (tags/v3.6.8:3c6b436a57, Dec 24 2018, 00:16:47) [MSC v.1916 64 bit (AMD64)]
print("sqlite3模块的版本号:",sqlite3.version)#2.6.0
print("sqlite3模块的版本号，元组:",sqlite3.version_info)#(2, 6, 0)
print("使用中的 SQLite 库的版本号:",sqlite3.sqlite_version)#3.35.4

#1.打开数据库，获得连接对象
conn=sqlite3.connect("notice.db")
print("Opened database successfully")
#2.获得数据库的操作游标
c=conn.cursor()
#3.创建数据表
# 如果不存在数据表就创建
# 数据表名pictureTable，
# 字段：picName,width,height,image_bytes
symbol = 'pictureTable'
try:
    c.execute('create table IF NOT EXISTS %s(picName TEXT,width INTEGER, height INTEGER, image_bytes BLOB)'%symbol)
    #提交到数据库
    conn.commit()
    pass
except Exception as e:
    print(e)
    print("Create table failed")
    

# #4.打开图片编码成base64的字节码后存入
Pic_byte=None
with open('fangkongqu.jpg', 'rb') as f:
     Pic_byte=f.read()
     print("数据类型：",type(Pic_byte))
     #字节码进行编码
     content = base64.b64encode(Pic_byte)
     print("数据类型:",type(content))
     #插入图片的二进制数据
     sql = f"INSERT INTO pictureTable (picName,width, height, image_bytes) VALUES (?,?,?,?);"
     #使用?占位符，是安全的sql语句
     c.execute(sql, ('fangkongqu.jpg', 218, 212,content))
     conn.commit()
     
#5.读取数据库的图片数据
cursor = conn.cursor()
sql = f"SELECT image_bytes FROM pictureTable WHERE picName=?"
cursor.execute(sql,('fangkongqu.jpg',))
value = cursor.fetchone()
print("value类型：",type(value))
if value:
    #base64编码对应的解码（解码完字符串）
    str_encode=base64.b64decode(value[0])
    print("判断解码完和之前存入的十六进制字节码是否一致：",str_encode==Pic_byte)
    # 将open方法读取的字节码转为opencv格式的数据
    nparr = np.frombuffer(str_encode, np.uint8)
    img_decode = cv2.imdecode(nparr, cv2.IMREAD_COLOR)
    '''
    或者采取如下方法：
    nparr = np.asarray(bytearray(str_encode), dtype="uint8")
    img_decode = cv2.imdecode(nparr, cv2.IMREAD_COLOR)    
    '''
    cv2.imshow("img",img_decode)
    cv2.waitKey(0)
conn.close()

