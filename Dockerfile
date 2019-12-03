FROM python:stretch

COPY . /app
WORKDIR /app


RUN pip install --upgrade pip --default-timeout=100
RUN pip install -r /app/requirements.txt --default-timeout=100

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
