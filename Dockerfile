FROM debian:latest

RUN \
    mkdir -p /pem2jks && \
    apt-get update && \
    apt-get install -y openssl openjdk-8-jre-headless

WORKDIR /pem2jks
