FROM python:3.7-slim
WORKDIR /app
COPY /api_yamdb/requirements.txt /app
RUN pip install -r requirements.txt
COPY . /app
CMD gunicorn api_yamdb.api_yamdb.wsgi:application --bind 0.0.0.0:5000
