from flask import Flask, jsonify, request

# Create a Flask application instance
app = Flask(__name__)

# Define a route for the home page
@app.route('/')
def home():
    return "Welcome to your Flask Application!"


    # Run the application
if __name__ == '__main__':
    app.run(host='0.0.0.0' , port=50000)
