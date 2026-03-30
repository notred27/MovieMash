import requests
import random
import time

def get_random_user():
    url = "https://randomuser.me/api/"
    try:
        response = requests.get(url)
        response.raise_for_status()
        data = response.json()
        return data
    except requests.exceptions.RequestException as e:
        print(f"Error fetching data: {e}")
        return None


# Generate dummy data for test users
if __name__ == "__main__":

    for i in range(4, 24):
        user_data = get_random_user()
        if user_data:

            fav_movie = random.randint(0, 256)
            print(f"insert into user values ('{i}', '{user_data["results"][0]["login"]["username"]}', 'no_pass', '{user_data["results"][0]["email"]}', '{user_data["results"][0]["registered"]["date"][0:10]}', '{fav_movie}', '{user_data["results"][0]["picture"]["medium"]}');")
            time.sleep(0.5)

