import requests, bs4, os,urllib

#download the html
url = 'https://xenabrowser.net/datapages/?host=https://tcga.xenahubs.net'
#print(url)

headers = {'User-Agent':'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) '  
                        'Chrome/51.0.2704.63 Safari/537.36'}  
#res = urllib.request.Request(url=url,headers=headers)  

res = requests.get(url,headers=headers)
#print(res)
soup = bs4.BeautifulSoup(res.text, "html.parser")
print(soup)

#get cancer name
cancer_name_elem = soup.select('') #cohortList li
print(cancer_name_elem)
for name in cancer_name_elem:
	cancer_name_elem.get('href')
	print(name)
	break
