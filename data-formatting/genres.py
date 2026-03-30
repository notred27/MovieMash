import requests

API_KEY = ""

title = "Night of the living dead"

url = "https://api.themoviedb.org/3/search/movie?query=" + title.replace(" ", "+")
headers = {
    "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJiNGE1MjI5Y2VmNTgxZjEwMTllNDc3NTdmMzljMGQyMSIsIm5iZiI6MTc0MzYzNDg3MS44NzIsInN1YiI6IjY3ZWRjMWI3NTRmNTk1YmI1NWE3OGI3OSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.KgKNJ1f02UxzrpqbPPGSdsKie_5KuPKXs2XTuwmFpc4"
}


response = requests.get(url, headers=headers)
data = response.json()

print(data['results'][0]['id'])
print("https://image.tmdb.org/t/p/w600_and_h900_bestv2/" + data['results'][0]['poster_path'])


movie_id = data['results'][0]['id']


url = f"https://api.themoviedb.org/3/movie/{movie_id}"
response = requests.get(url, headers=headers)
data = response.json()


for genre in data['genres']:    
    print(genre["name"])
