FROM python:alpine3.21

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

ENV FLASK_APP=app.py

ENV FLASK_RUN_HOST=0.0.0.0

CMD ["python", "-m", "flask", "run"]





