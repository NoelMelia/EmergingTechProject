  
FROM python:3.8

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_APP=web-service.py

CMD flask run --host=0.0.0.0

# docker build -t model .
# docker run -d -p model 5003:5003
# docker build . -t model
# docker run --name model-container -d -p 5000:5000 model