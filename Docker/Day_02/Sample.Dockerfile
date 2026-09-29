# Java

FROM eclipse-temurin:17-jre

WORKDIR /opt/xius

COPY tunetalk.jar .

CMD ["java", "-jar", "tunetalk.jar"]

# Python

FROM python:3.12-slim

WORKDIR /opt/xius

COPY . .

RUN pip install -r requirements.txt

CMD ["python", "app.py"]

# Shell based

FROM ubuntu:22.04

WORKDIR /opt/xius

COPY start.sh .

RUN chmod +x start.sh

CMD ["./start.sh"]

# Node.js

FROM node:20-alpine

WORKDIR /opt/xius

COPY package.json package-lock.json ./

RUN npm install

COPY . .

CMD ["node", "app.js"]
