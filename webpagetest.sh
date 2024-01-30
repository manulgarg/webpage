#!/bin/bash

url_to_test="https://www.telenetix2.in/"

response=$(curl -s -o /dev/null -w "%{http_code}" $url_to_test)
if [ $response -eq 200 ]; then
    echo "URL Test Passed: $url_to_test is reachable."
else
    echo "URL Test Failed: $url_to_test returned HTTP status code $response."
fi
