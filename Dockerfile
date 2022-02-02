FROM python:3.9

RUN pip install Django==3.2

RUN apt update

RUN pip install Flask==1.1.2

ADD . /app

EXPOSE 8080

ENTRYPOINT python /app/app.py runserver 0.0.0.0:8080
