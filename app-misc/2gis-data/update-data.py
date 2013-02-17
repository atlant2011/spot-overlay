#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import re
import os
from urllib.request import urlopen


wget = "wget -k --spider "
spisok = ["Abakan", "Архангельск", "Astrahan", "Barnaul", "Belgorod", "Biysk", "Blagoveshensk", "Bratsk", "Bryansk", "Vnovgorod", "Vladivostok", "Vladimir", "Volgograd", "Вологда", "Воронеж"]

for city in spisok:
    print(spisok)
    link = "http://www.2gis.ru/distributive/" + city + "/last/linux/"
    print(link)
    link2 = os.system(wget + link)
    rev = re.findall("[0-9][0-9]",  link2)
    print("city + rev")