# docker build flask

## Flask 

https://flask.palletsprojects.com/en/3.0.x/quickstart/

python v3.7

## run command 

```sh
flask --app main run -p 3000 -h 0.0.0.0

flask --app main run -p 3000 -h 0.0.0.0 --debug
```

## main.py 

```py
from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def root_path():
    return jsonify({'status': 'success'})

@app.route('/healthz')
def health_check():
    return jsonify({'status': 'OK'})

if __name__ == "__main__":
    app.run()
```

## install package 

```sh
pip install Flask
```

## run docker

```sh
docker run -it --name flask -p 7000:3000 -d flask:v1.0

docker run -it --name flask -p 7000:3000 flask:v1.0
```

## test 

```
http://localhost:7000/healthz
```

## result

```json
{
    "status": "OK"
}
```


