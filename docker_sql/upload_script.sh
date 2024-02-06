#!/bin/bash

URL="https://s3.amazonaws.com/nyc-tlc/misc/taxi+_zone_lookup.csv"

python upload_data.py \
    --user=user \
    --password=root \
    --host=pgdatabase \
    --port=5432 \
    --db=ny_taxi \
    --table_name=taxi_zone_trips \
    --url="$URL"