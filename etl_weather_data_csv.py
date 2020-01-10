from pandas_ods_reader import read_ods
import numpy as np
import json

year_range = [str(y) for y in range(1999, 2019)]
month_map = {
    1: "January",
    2: "February",
    3: "March",
    4: "April",
    5: "May",
    6: "June",
    7: "July",
    8: "August",
    9: "September",
    10: "October",
    11: "November",
    12: "December"
}

# localisation of wanted data (page number in sheet) and description line
ods = {
    10: 'Denní úhrn slunečního svitu v hodinách',
    8: 'Denní úhrn srážek v mm',
    7: 'Průměrná denní vlhkost vzduchu v %',
    6: 'Průměrný denní tlak vzduchu v hPa',
    5: 'Průměrná denní rychlost větru v m/s',
    4: 'Minimální denní teplota vzduchu ve °C',
    3: 'Maximální denní teplota vzduchu ve °C',
    2: 'Průměrná denní teplota vzduchu ve °C',
}


def transform_ods_json(data, description, result):

    for _y in range(0, 20): # range of 20 years
        year = data.loc[data[description] == year_range[_y]]
        year = np.array(year)
        
        year_name = year[0][0]

        if len(result) < 20:
            result.append({year_name: []})
        
        m_iter = 0

        for month in year:
            month_name = month_map[int(month[1])] # map month name
            
            if len(result[_y][year_name]) < 12:
                result[_y][year_name].append({month_name: {description : []}})

            for _day in range(2, 33):
                result[_y][year_name][m_iter][month_name][description].append(month[_day])

            m_iter += 1



sunshine_year_index = 459 # oldest wine in DB, year 1999
result = []

sheet = 2

description = ods[2]
name = "Average daily temperature [°C]"


data = read_ods('pocasi_brno_turany_1961.ods', sheet)[sunshine_year_index:]

for _y in range(0, 20): # range of 20 years
    year = data.loc[data[description] == year_range[_y]]
    year = np.array(year)
    
    year_name = year[0][0]

    if len(result) < 20:
        result.append({year_name: []})
    
    m_iter = 0

    for month in year:
        month_name = month_map[int(month[1])] # map month name
        
        if len(result[_y][year_name]) < 12:
            result[_y][year_name].append({month_name: {name : []}})

        for _day in range(2, 33):
            result[_y][year_name][m_iter][month_name][name].append(month[_day])

        m_iter += 1

print(json.dumps(result, indent=2))


"""
result = []
for _y in range(0, 20): # range of 20 years
    year = ods_data.loc[ods_data['Denní úhrn slunečního svitu v hodinách'] == year_range[_y]]
    year = np.array(year)
    
    year_name = year[0][0]

    if len(result) < 20:
        result.append({year_name: []})
    
    m_iter = 0

    for month in year:
        month_name = month_map[int(month[1])] # map month name
        
        if len(result[_y][year_name]) < 12:
            result[_y][year_name].append({month_name: {"Denní úhrn slunečního svitu v hodinách" : []}})

        for _day in range(2, 33):
            result[_y][year_name][m_iter][month_name]["Denní úhrn slunečního svitu v hodinách"].append(month[_day])

        m_iter += 1
"""
print(json.dumps(result, indent=2))





