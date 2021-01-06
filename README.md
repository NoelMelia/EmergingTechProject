## Emerging Technologies Project
<br>


### Question
*************
In this project you must create a web service that uses machine learning to make predictions based on the data set powerproduction available on Moodle. The goal is to
produce a model that accurately predicts wind turbine power output from wind speed values, as in the data set. You must then develop a web service that will respond with predicted power values based on speed values sent as HTTP requests. Your submission must be in the form of a git repository containing, at a minimum, the following items:
1. Jupyter notebook that trains a model using the data set. In the notebook you
should explain your model and give an analysis of its accuracy.
2. Python script that runs a web service based on the model, as above.
3. Dockerfile to build and run the web service in a container.
4. Standard items in a git repository such as a README.
*************
### Introduction
*************
The Project is Web service that uses Machine Learning to make Predictions based on a Data Set. The Goal was to create a Model that arracutely predicts Wind Turbine Power from Wind Speed Values Entered by the User which is from the data set. The User can choose an Value in moderation fo the value in the data set. The Web service will respond to the User input and give a prediction on the model data that has been calculated.
![Image](Layout.PNG)
*******************
### Technology
*******************
Flask
Tensorflow
Keras
## Breakdown Steps
*******************
* 1: Create a Web Service that uses machine learning 

* 2: Design a Model to make pre-dictions based on the data set (powerproduction)

* 3: Goal is to Produce a model that accurately predicts wind turbine outpus(Wind Speed Values from the data set)

* 4: Then develop a Web service that will respond with the predicted power values basesd on speed values(HTTP requests)

### Design of Project
*******************
Model - Linear 

Web-Service.py

Index.html

Docker

### How to Run The Application
*******************
There are multiple ways of running the project. 
1. Running the python command 
```python
python web-service.py
```
This will run the python file which will connect the index.html and can run it locally on 127.0.0.1:5000

2. Flask
Running Flask through python command.
```python
set FLASK_APP=web-service.py
python -m flask run
```
To run the application you can either use the flask command or python’s -m switch with Flask. Here Flask sets the python file to it and then runs it afterward.

3. Docker
Building Docker Image and Container through python command.
```python
# This will build the Image with Dockerfile and run the requirements within the Project guildlines.
docker build . -t model

# This will make the container so the user can run it on the extension of whatever port is added. 
# Then while made can be run on localhost 127.0.0.1 and the index.html page will be opened
docker run --name model-container -d -p 5000:5000 model
```

### Conclusion
*******************
This project ws tricky as there was a few components to set up before getting started. I had an issue with installing tensorflow, it wouldnt let me set up because i had a newer version of python which my computer didnt like one bit. The version of python is 3.8 which i had to downgrade to 3.7 to get it working properly. Once i had it installed then it was easy getting everything else working. The model was set up on jupyter notebook which i had been using for a while. The web service was set up on a python file which connected to a HTML file. Using Json to talk to the web service worked well which i used the Fetch API for post request. 
## Marking Scheme
* 25% Research 
* 25% Development
* 25% Consistency
* 25% Documentation
