print('hello')

import re

regex =  r'^.*?,.*?,(.*?),.*$'

fin = open("fb_sub.csv", "r")
file = fin.read()

match = re.findall(regex, file, re.MULTILINE)
fout=open("company.txt","w")
fout.write(match[1])
fout.close()