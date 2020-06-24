FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install gunicorn
#3.2.b might be wrong
#RUN gunicorn -b :8080 main:APP

EXPOSE 80:8080/tcp
##########

#net work brig VPN CARD ? on boot with docker desktop ?
#net work brig VPN CARD ? on boot with docker desktop ?
#net work brig VPN CARD ? on boot with docker desktop ?

ENTRYPOINT gunicorn -b :8080 main:APP
#ENTRYPOINT [ "python", "main.py"]