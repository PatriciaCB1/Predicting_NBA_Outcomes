import http.client

conn = http.client.HTTPSConnection("api-nba-v1.p.rapidapi.com")

headers = {
    'x-rapidapi-key': "df3bfeea97mshaefff0d82edd5dfp12fafdjsn91fbd1d03183",
    'x-rapidapi-host': "api-nba-v1.p.rapidapi.com"
    }

conn.request("GET", "/seasons/", headers=headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))