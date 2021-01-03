# flask for web app.
import flask as fl
from flask import request
import tensorflow as tf

# Create a new web app.
app = fl.Flask(__name__)


# Add root route.
@app.route("/", methods=['GET'])
def home():
  return app.send_static_file('index.html')

@app.route("/windpower", methods=['POST'])
def wind():
  windSpeed = float(request.get_json()["value"])
  
  model = tf.keras.models.load_model("model.h5")
  
  predict = model.predict([windSpeed])
  
  predlist = predict.tolist()
  return{'predict':predlist[0]}


if __name__ =='__main__':
    app.run(debug=True,port=5003)

    # https://neptune.ai/blog/how-to-serve-machine-learning-models-with-tensorflow-serving-and-docker