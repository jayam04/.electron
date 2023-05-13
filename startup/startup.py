import json
import os
with open('startup/webpages.json') as file:
    data = json.load(file)

for command in data:
    for subcommand in data[command]:
        os.run