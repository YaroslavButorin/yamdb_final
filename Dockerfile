FROM python:3.7-slim
COPY ./ /app
RUN pip install -r /api_yamdb/requirements.txt
WORKDIR /app/api_yamdb/
CMD python manage.py runserver 0:5000
