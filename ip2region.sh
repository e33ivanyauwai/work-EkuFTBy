#!/bin/bash
#curl https://ipinfo.io/$1 | python -c 'import json,sys;obj=json.load(sys.stdin);print obj["country"]'
curl http://www.geoplugin.net/json.gp?ip=$1 | python -c 'import json,sys;obj=json.load(sys.stdin);print obj["geoplugin_countryName"]'