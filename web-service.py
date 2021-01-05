# Imports needed
import flask as fl
from flask import request
import tensorflow as tf
import math

# Create a new web app.
app = fl.Flask(__name__)


# Add root route.
@app.route("/", methods=['GET'])
def home():# Get the Index Page from the static Folder
  return app.send_static_file('index.html')

@app.route("/windpower", methods=['POST'])
def wind():
  # Get the value from the request method from flask and change to float type
  # https://flask.palletsprojects.com/en/1.1.x/api/#flask.Request.get_json
  windSpeed = float(request.get_json()["value"])
  # Load the model from h5 file 
  model = tf.keras.models.load_model("model.h5")
  # Predict the value that the user inputs
  predict = model.predict([windSpeed])
  # Pass the Value into a list
  predlist = predict.tolist()
  
  # Return the Prediction Value to the Index File
  return{'predict':predlist[0]}


if __name__ =='__main__':
  # Run the App on Port 5003
    app.run(debug=True,port=5001)

    # https://neptune.ai/blog/how-to-serve-machine-learning-models-with-tensorflow-serving-and-docker