FROM python:3.6-alpine3.8

WORKDIR /app
COPY src /app

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "app.py"]
