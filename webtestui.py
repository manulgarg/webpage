mport requests

url_to_test = "https://www.telenetix2.in/"

try:
    response = requests.get(url_to_test)
    response.raise_for_status()  # Raises an HTTPError if the HTTP request returned an unsuccessful status code

    print(f"URL Test Passed: {url_to_test} is reachable. Status code: {response.status_code}")
except requests.HTTPError as e:
    print(f"URL Test Failed: {url_to_test} returned HTTP status code {e.response.status_code}.")
except requests.RequestException as e:
    print(f"URL Test Failed: Unable to connect to {url_to_test}. Error: {e}")
