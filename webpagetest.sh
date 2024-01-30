#!/bin/bash

# Define the URL to be tested
url_to_test="https://www.telenetix.in/"

# Perform an HTTP GET request using curl
response=$(curl -s -o /dev/null -w "%{http_code}" $url_to_test)

# Check the HTTP response code
if [ $response -eq 200 ]; then
    echo "URL Test Passed: $url_to_test is reachable."
else
    echo "URL Test Failed: $url_to_test returned HTTP status code $response."
fi