import requests

def test_activity():
    data = ["participants"]
    r = requests.get("https://www.boredapi.com/api/activity")
    assert data[0] in r.text
 
def test_jokes():
    data = ["punchline"]
    r = requests.get("https://official-joke-api.appspot.com/random_joke")
    assert data[0] in r.text