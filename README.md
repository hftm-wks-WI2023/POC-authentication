# POC für Verschiedene Authentication Methoden

## Initialisierung

### From source

```
python -m venv .venv
.venv\Scripts\activate
pip install -r requirements.txt
```

### Using Docker
```
docker build -t poc-authentication .
docker run -p 8000:8000 poc-authentication
```

## POCS

### HTTP Basic
![http-basic-auth.jpeg](http-basic-auth.jpeg)

- change directory `cd ./http_basic/`
- run server `python manage.py runserver`
- navigate to [http://localhost:8000/auth/me/](http://localhost:8000/auth/me/)
- or call the endpoint
```
curl http://admin:admin@localhost:8000/auth/me
```

### Session
![session-auth.png](session-auth.png)

- change directory `cd ./session/`
- run server `python manage.py runserver`
- open the browser and navigate to [http://localhost:8000/auth/login/](http://localhost:8000/auth/login/)
- login using `admin` as username and `admin` as password
- navigate to [http://localhost:8000/auth/me/](http://localhost:8000/auth/me/)

### Token
- change directory `cd ./token/`
- run server `python manage.py runserver`
- open the browser and navigate to [http://localhost:8000/auth/token/](http://localhost:8000/auth/token/)
- login using `admin` as username and `admin` as password
- call the endpoint
```
curl http://localhost:8000/auth/me -H 'Authorization: Bearer $accecc_token'
```

![access-and-refresh-token.jpg](access-and-refresh-token.jpg)

### OAuth2
#### `Quthorization Code using PKCE`
![auth-sequence-auth-code-pkce.png](auth-sequence-auth-code-pkce.png)

