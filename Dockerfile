FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install gunicorn
#3.2.b might be wrong
#RUN gunicorn -b :8080 main:APP



ENTRYPOINT gunicorn -b :80 main:APP