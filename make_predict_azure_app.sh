#!/usr/bin/env bash

PORT=8000
echo "Port: $PORT"

# POST method predict
curl -d '{
   "CHAS":{
      "0":0
   },
   "RM":{
      "0":6.575
   },
   "TAX":{
      "0":296.0
   },
   "PTRATIO":{
      "0":15.3
   },
   "B":{
      "0":396.9
   },
   "LSTAT":{
      "0":4.98
   }
}'\
     -H "Content-Type: application/json" \
     -X POST https://ccon-prod-westeurope-aci-02.servicebus.windows.net/cc-GJBB-75D9EC8E/proxy/5000/predict 
     #your application name <yourappname>goes here
