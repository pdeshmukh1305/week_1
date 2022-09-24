FROM python:latest

WORKDIR /src/

RUN apt-get update
RUN apt-get install wget
RUN wget https://raw.githubusercontent.com/mschermann/forensic_accounting/master/fb_sub.csv


COPY companyfinder.py ./

RUN ["python","./companyfinder.py"]