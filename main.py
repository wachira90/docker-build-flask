#!python
from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def root_path():
    return jsonify({'status': 'success'})

@app.route('/healthz')
def health_check():
    return jsonify({'status': 'OK'})

if __name__ == "__main__":
    app.run(debug=True)
