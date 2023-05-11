FROM python:3.7-slim
COPY ./api_yamdb /app
RUN pip install -r /app/requirements.txt
WORKDIR /app
CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:5000
