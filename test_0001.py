import requests

def test_Activity():
    r = requests.get("https://www.boredapi.com/api/activity")
    assert r.status_code == 200
    c = __in("participants", r.text)
    assert c

def test_Jokes():
    r = requests.get("https://official-joke-api.appspot.com/random_joke")
    assert r.status_code == 200
    c = __in("punchline", r.text)
    assert c
    
def __in(a,b):
    c = False
    if str(a) in str(b):
        c=True
    else:
        c=False
    return c