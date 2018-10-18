FROM debian:latest

RUN \
    apt-get update && \
    apt-get install -y openssl openjdk-8-jre-headless
