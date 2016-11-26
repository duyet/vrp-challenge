import os, requests, json
from flask import Flask, redirect, request as req, jsonify
import time

app = Flask(__name__)

@app.route('/cvrp', methods=['POST'])
def cvrp():
    data = json.loads(req.data)
    solutions = json.load(open('first_round/solutions/1/%s' % data['problem_name'], 'r'))
    solutions.pop('cost')
    return jsonify(solutions)

@app.route('/mdcvrp', methods=['POST'])
def mdcvrp():
    data = json.loads(req.data)
    solutions = json.load(open('first_round/solutions/2/%s' % data['problem_name'], 'r'))
    solutions.pop('cost')
    return jsonify(solutions)


@app.route('/twcvrp', methods=['POST'])
def twcvrp():
    data = json.loads(req.data)
    solutions = json.load(open('final_round/solutions/1/%s' % data['problem_name'], 'r'))
    solutions = {
        'routes': [route['nodes'] for route in solutions['routes']]
    }
    return jsonify(solutions)

if __name__ == '__main__':
    app.run(debug=True, port=5050)
