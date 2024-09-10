FROM python:3.9.20-slim-bullseye

COPY flask_app.py .

RUN pip install flask
ENV FLASK_APP=flask_app.py
ENV FLASK_RUN_HOST=0.0.0.0

ENTRYPOINT [ "flask run --debug" ]