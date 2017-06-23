import requests
from bs4 import BeautifulSoup
import re
import rule
import sys




def scan_title(title):

    titlerule = rule.title
    web_information = 0

    for key in titlerule.keys():
        req = re.search(key,title,re.I)
        if req:
            web_information = titlerule[key]
            break
        else:
            continue
    return web_information

def scan_head(header):
    headrule = rule.head
    web_information = 0

    for key in headrule.keys():
        if '&' in key:
            keys = re.split('&',key)
            if re.search(keys[0],header,re.I) and re.search(keys[1],response,re.I) :
                web_information = headrule[key]
                break
            else:
                continue

        else:
            req = re.search(key,header,re.I)
            if req:
                web_information = headrule[key]
                break
            else:
                continue
    return web_information

def scan_body(response):
    body = rule.body
    web_information = 0

    for key in body.keys():
        if '&' in key:
            keys = re.split('&',key)
            if re.search(keys[0],response,re.I) and re.search(keys[1],response,re.I):
                web_information = body[key]
                break
            else:
                continue

        else:
            req = re.search(key,response,re.I)
            if req:
                web_information = body[key]
                break

            else:
                continue

    return web_information


def main():
    url = 'www.jinwulab.com'
    if url.startswith('http://'):
        url = url
    else:
        url = 'http://'+url
    
    headers = {'User-Agent':'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/6.0.1471.914 Safari/537.36'}
    response = requests.get(url=url,headers=headers)
    bresponse = BeautifulSoup(response.text,"lxml")
    title = bresponse.findAll('title')                            #title
    for i in title:
    
        title = i.get_text()
    head = response.headers
    
    response = response.text
    
    
    header = ''
    for key in head.keys():                             #�� header����
        header = header+key+':'+head[key]
    print('�ռ���ҳ��Ϣ���')
    
    web_information = scan_title(title)
    if web_information == 0:
        web_information = scan_head(header)
        if web_information == 0:
            web_information = scan_body(response)
            if web_information == 0:
                print('����Ϊ����')
                sys.exit()

            else:
                print(web_information)

        else:
            print(web_information)

    else:
        print(web_information)


if __name__ == '__main__':

    main()