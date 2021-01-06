  
FROM python:3.7

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_APP="web-service.py"

CMD flask run --host=0.0.0.0

# Building the Docker Image and Container
# docker build . -t model
# docker run --name model-container -p 5000:5000 model

# Running Flask 
# set FLASK_APP=web-service.py
# python -m flask run