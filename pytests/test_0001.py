import requests

def test_activity():
    data = ["participants"]
    r = requests.get("https://www.boredapi.com/api/activity")
    assert data[0] in r.text
