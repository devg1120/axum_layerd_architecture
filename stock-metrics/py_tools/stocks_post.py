import requests
import json

url = 'http://localhost:8080/stocks/'
data = {'name': 'NTT', 'ticker_symbol': 'XXX','market_kind': '01K23MCJK4RKHV9BCXNQ14N2SN'}
headers = {'Content-type': 'application/json'}

response = requests.post(url, data=json.dumps(data), headers=headers)

print(response.status_code)
print(response.text)
