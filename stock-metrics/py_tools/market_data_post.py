import requests
import json
import datetime

dt= datetime.datetime.now()
strdt = dt.strftime('%Y-%m-%d %H:%M:%S')

        # 'stock_id': '01K23QXWME0J94T4ZRCEWPFAG7',
url = 'http://localhost:8080/market_data/01K23QXWME0J94T4ZRCEWPFAG7'
json_data = {
        'as_of':strdt,
        'start_price': 100.0,
        'end_price':   200.9,
        'high_price':  345.1,
        'low_price':   10.9
        }
#headers = {'Content-type': 'application/json'}
headers = {'Content-type': 'multipart/form-data'}

json_str = json.dumps(json_data)
files = {
    #"json_file": ("data.json", json_str, "application/json")
    "json_file": (None, json_str)
}


#target_file = open("data.json", "r")
#files = {"file": (target_file.name, target_file.read())}
 
target_file = open("data.csv", "r")
files = {"file": (target_file.name, target_file.read(), 'text/csv')}

#response = requests.post(url, data=json.dumps(data), headers=headers)
#response = requests.post(url, files=files, headers=headers)
response = requests.post(url, files=files)

print(response.status_code)
print(response.text)
