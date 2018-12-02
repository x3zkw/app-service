from flask import Flask, Response, json

app = Flask(__name__)

def build_response(resp_dict, status_code):
    response = Response(json.dumps(resp_dict), status_code)
    response.headers["Access-Control-Allow-Origin"] = "*"
    response.headers["Access-Control-Allow-Headers"] = "Content-Type"
    return response

@app.route('/')
def index():
    return build_response({"message": "App Service!"}, 200)

@app.route('/status', methods=["GET"])
def status():
    return build_response({"status": "success"}, 200)

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=False)
