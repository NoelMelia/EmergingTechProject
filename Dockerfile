  
FROM python:3.7

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_APP="web-service.py"

CMD flask run --host=0.0.0.0


# docker build . -t model
# docker run --name model-container -d -p 5001:5001 model
# docker run --name model-container2 -p 5009:5009 model3

# Running Flask 
# set FLASK_APP=web-service.py
# python -m flask run