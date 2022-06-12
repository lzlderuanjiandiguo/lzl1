import requests
import os
import time
import re
import traceback
from bs4 import BeautifulSoup
import bs4

import requests
from bs4 import BeautifulSoup

def getHTML(url):
    try:
        k = {'user-agent': 'Mozilla/5.0'}  # 模拟浏览器
        r = requests.get(url, timeout=30, headers=k)
        r.raise_for_status()
        r.encoding = r.apparent_encoding
        print(r.raise_for_status())
        return r.text
    except:
        return "error connection"

def getText():
    url1 = "http://bj.bendibao.com/news/2020429/274006.shtm"
    k = {'user-agent': 'Mozilla/5.0'}  # 模拟浏览器
    #req_html = getHTML(url1)
    #bs_obj = BeautifulSoup(req_html, "html.parser")
    #Covid19Info = bs_obj.find('div', class_='content').text
    page_text=requests.get(url=url1,headers=k)
    soup=BeautifulSoup(page_text.content,'lxml',from_encoding='utf-8')
    p_list=soup.select('.content>center p')
    fp=open('./Covid19' + time.strftime('%Y.%m.%d', time.localtime(time.time())) + '.txt','w',encoding='utf-8')
    for Covid19 in p_list:
        Covid19Info=Covid19.text
        fp.write(Covid19Info+'\n')
        print(Covid19Info,'文字数据下载成功！！')
        flag = 0

    print(flag)
    try:
        if flag == 1:  # 成功下载，需要删除旧数据
            with open('./Covid19 ' + time.strftime('%Y.%m.%d', time.localtime(time.time())) + '.txt', 'r') as li1:
                removptr = li1.read()
                print(removptr)
                os.remove(removptr)
                print("the ./Covid19outdate file is delete")
        else:
            print("the ./Covid19list already deleted")
    except:
        print('./Covid19cannot delete')
    try:
        if flag == 1:
            with open('./Covid19 ' + time.strftime('%Y.%m.%d', time.localtime(time.time())) + '.txt', 'w+') as li:
                li.write(str('./Covid19 ' + time.strftime('%Y.%m.%d', time.localtime(time.time())) + '.txt'))
                li.close
                print("the ./Covid19 list is update")
        else:
            print("the ./Covid19 list already exist")
    except:
        print('./Covid19 cannot save')

def getPolicy():
    url4 = "http://bj.bendibao.com/news/202254/314101.shtm"
    k = {'user-agent': 'Mozilla/5.0'}  # 模拟浏览器
    #req_html = getHTML(url1)
    #bs_obj = BeautifulSoup(req_html, "html.parser")
    #Covid19Info = bs_obj.find('div', class_='content').text
    page_text=requests.get(url=url4,headers=k)
    soup=BeautifulSoup(page_text.content,'lxml',from_encoding='utf-8')
    p_list=soup.select('.content>p')
    fp=open('./Policy' +time.strftime('%Y.%m.%d', time.localtime(time.time())) + '.txt','w',encoding='utf-8')
    for Covid19Policy in p_list:
        Covid19PolicyInfo=Covid19Policy.text
        fp.write(Covid19PolicyInfo+'\n')
        print(Covid19PolicyInfo,'政策数据下载成功！！')
        flag = 0

    print(flag)
    try:
        if flag == 1:  # 成功下载，需要删除旧数据
            with open('./Policy' +time.strftime('%Y.%m.%d', time.localtime(time.time())) + '.txt', 'r') as li1:
                removptr = li1.read()
                print(removptr)
                os.remove(removptr)
                print("thePolicy outdate file is delete")
        else:
            print("thePolicy list already deleted")
    except:
        print('Policycannot delete')
    try:
        if flag == 1:
            with open('./Policy' +time.strftime('%Y.%m.%d', time.localtime(time.time())) + '.txt', 'w+') as li:
                li.write(str('./Policy' +time.strftime('%Y.%m.%d', time.localtime(time.time())) + '.txt'))
                li.close
                print("the Policylist is update")
        else:
            print("the Policylist already exist")
    except:
        print('Policycannot save')



def getContent():
    url2="http://inews.gtimg.com/newsapp_bt/0/14648592613/641"
    req_h=getHTML(url2)
    img_data=requests.get(url=url2).content
    with open('./fangkongqu.jpg','wb') as fp:
        fp.write(img_data)
        print('建议图片下载成功！')


def getIMG():
    if not os.path.exists('./Area'):#创建文件夹
        os.mkdir('./Area')
    k = {'user-agent': 'Mozilla/5.0'}  # 模拟浏览器
    url3="http://m.bj.bendibao.com/news/fengkong/"
    page_text=requests.get(url=url3,headers=k).text
    ex='<div class="picture">.*?<img class="lazy" data-original="(.*?)" alt.*?</div>'#正则
    img_src_list=re.findall(ex,page_text,re.S)
    #print(page_text)
    print(img_src_list)
    for src in img_src_list:
        src=src
        image_data=requests.get(url=src,headers=k).content#图片二进制数据
        #生成图片名称
        image_name=src.split('/')[-1]
        imgPath='./Area/' +time.strftime('%Y.%m.%d', time.localtime(time.time())) +image_name#储存路径
        with open(imgPath,'wb')as fp:
            fp.write(image_data)
            #print(image_name,'区域图片下载成功！')
            flag = 0

    print(flag)
    try:
        if flag == 1:  # 成功下载，需要删除旧数据
            with open('./Area/' +time.strftime('%Y.%m.%d', time.localtime(time.time())), 'r') as li1:
                removptr = li1.read()
                print(removptr)
                os.remove(removptr)
                print("the outdate area is delete")
        else:
            print("the list area deleted")
    except:
        print('cannot delete')
    try:
        if flag == 1:
            with open('./Area/' +time.strftime('%Y.%m.%d', time.localtime(time.time())), 'w+') as li:
                li.write(str('./Area' +time.strftime('%Y.%m.%d', time.localtime(time.time()))))
                li.close
                print("the arealist is update")
        else:
            print("the arealist already exist")
    except:
        print('area cannot save')

if __name__ == "__main__":

    getContent()
    getText()
    getIMG()
    getPolicy()


