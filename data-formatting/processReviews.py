import csv
import random
from datetime import datetime, timedelta

usernames = [
    "CineBuff",
    "ReelJunkie",
    "PopcornFiend",
    "FlickFreak",
    "ScreenSaga",
    "FrameFanatic",
    "MovieMuse",
    "SilverReels",
    "PlotTwistr",
    "EpicScenez",
    "FilmNerdz",
    "CriticMode",
    "ReelVibes",
    "SceneSnaps",
    "OscarQuest",
    "WatchLog",
    "MovieScope",
    "FlixCrate",
    "CelluloidZ",
    "StoryFlicks"
]



start_date = datetime.strptime('2025-01-01', '%Y-%m-%d')
end_date = datetime.strptime('2025-05-07', '%Y-%m-%d')


def reformat_csv(input_file, output_file):

    i = 0
    with open(input_file, mode='r', newline='', encoding='utf-8') as infile:
        reader = csv.DictReader(infile)

        with open(output_file, 'w') as outfile:

            j = 4
            # Generate random users
            for name in usernames:
                outfile.write(f"insert into user values ('{j}', '{name}','no_pass', 'dummy@test.com', '2025-03-26', '{int(random.random() * 253)}');\n")
                j+= 1

            # Generate reviews
            for row in reader:
                random_days = random.randint(0, (end_date - start_date).days)
                random_date = start_date + timedelta(days=random_days)
                comment = row['review'].replace("'","''")
                tmp = f"insert into review values ('{int(random.random() * 23)}', '{int(random.random() * 253)}', '{random_date.strftime('%Y-%m-%d')} 14:00:00' , '{int(random.random() * 10)}', '{comment}', NULL, 0,0);\n"
                outfile.write(tmp)
                i += 1

                if i == 500:
                    return

input_csv = 'IMDB Dataset.csv'
output_file = 'reviews.sql'
reformat_csv(input_csv, output_file)
