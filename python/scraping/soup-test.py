from urllib.request import urlopen
from bs4 import BeautifulSoup

html = urlopen("http://www.python.org")
bsObj = BeautifulSoup(html.read(), features="html.parser")
print(bsObj.h1)

