import json
import argparse

parser = argparse.ArgumentParser(description='Extract values from file by key')
parser.add_argument('keywords', type=str, nargs='+',
                    help='name of the keyword')

args = parser.parse_args()
kw1 = args.keywords[0]
try:
    kw2 = args.keywords[1]
except IndexError:
    kw2 = None

with open('wine.json', 'r') as js:
    wine = json.load(js)

"""
Extract data from wine.json file according to keywords.
Works only for single entry (Vinařství) or pairs (Viniční trať, Vinařská oblas)
"""
output = []
for _w in wine:
    track = _w.get(kw1)
    area = _w.get(kw2)

    if area and track:
        formatted = "{} - {}".format(area,track)
        if formatted not in output:
            output.append("{} - {}".format(track, area))
    elif track:
        if track not in output:
            output.append(track)

for out in output:
    print(out)