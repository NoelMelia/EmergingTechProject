 FROM python:3
 
WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_APP=web-service.py

CMD python -m flask run
# WORKDIR /usr/src/app

# MAINTANER "g00237491@gmit.ie"

# We copy just the requirements.txt first to leverage Docker cache
# COPY requirements.txt ./

#  RUN pip install --no-cache-dir -r requirements.txt


# COPY . .

# ENTRYPOINT [ "python" ]
# ENV FLASK_APP=web_service.py

# CMD [ "web_service.py" ]

# https://runnable.com/docker/python/dockerize-your-flask-application
# FROM ubuntu:16.04

# MAINTANER Your Name "ian.mcloughlin@gmit.ie"

# RUN apt-get update -y && \
#     apt-get install -y python-pip python-dev

# We copy just the requirements.txt first to leverage Docker cache
# COPY ./requirements.txt /app/requirements.txt

# WORKDIR /app

# RUN pip install -r requirements.txt

# COPY . /app

# ENTRYPOINT [ "python" ]

# CMD [ "web_service.py" ]
