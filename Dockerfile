# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /Cstomized-Eva-Maria

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD ["python3", "bot.py"]