import requests
import json

url = 'http://localhost:8080/market_kind/'
data = {'name': '東京証券取引所', 'code': 'TSE'}
headers = {'Content-type': 'application/json'}

response = requests.post(url, data=json.dumps(data), headers=headers)

print(response.status_code)
print(response.text)
