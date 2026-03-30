import csv
import requests

API_KEY = ""


def reformat_csv(input_file, output_file):

    i = 4
    with open(input_file, mode='r', newline='', encoding='utf-8') as infile:
        reader = csv.DictReader(infile)

        with open(output_file, 'w') as outfile:
    
            for row in reader:
                runtime = int(row['Runtime'].split(" ")[0])
                hours = runtime // 60
                minutes = runtime % 60

                title = row['Series_Title']

                url = "https://api.themoviedb.org/3/search/movie?query=" + title.replace(" ", "+")
                headers = {
                    "Authorization": "Bearer"
                }

                response = requests.get(url, headers=headers)
                data = response.json()

                if data['results'][0]['poster_path'] != None:
                    poster = "https://image.tmdb.org/t/p/w600_and_h900_bestv2/" + data['results'][0]['poster_path']
                else:
                    poster = row['Poster_Link']

                movie_id = data['results'][0]['id']


                url = f"https://api.themoviedb.org/3/movie/{movie_id}"
                response = requests.get(url, headers=headers)
                data = response.json()
                

                formatted_line = f"insert into movie values ('{i}', '{row['Series_Title']}', '{row['Released_Year']}', '{int(hours):02}:{int(minutes):02}:00', '{row['Overview']}', '{poster}');\n"
                outfile.write(formatted_line)

                for genre in data['genres']:   
                    outfile.write(f"insert into movie_genres values ('{i}', '{genre['name']}'); \n") 

                i += 1
                    
    print(f"Reformatted CSV has been written to {output_file}")


input_csv = 'imdb_top_1000.csv'
output_file = 'movies.sql'
reformat_csv(input_csv, output_file)