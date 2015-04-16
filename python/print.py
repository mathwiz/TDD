import urllib
import json

response = urllib.urlopen("http://search.twitter.com/search.json?q=microsoft")
pyresponse = json.load(response)

#print pyresponse
#print type(pyresponse)
#print pyresponse["results"]
results = pyresponse["results"]

for i in range(10):
    print("Tweet " + str(i) + ": " + results[i]["text"])

