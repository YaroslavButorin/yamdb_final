FROM python:3.7-slim
COPY ./ /app
RUN pip install -r /app/requirements.txt
WORKDIR /app/api_yamdb/
CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:5000
