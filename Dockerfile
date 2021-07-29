
# FROM debian:latest

# RUN apt update && apt upgrade -y
# RUN apt install python3 python3-dev python3.8-dev megatools git curl python3-pip ffmpeg -y
# RUN pip3 install -U pip

FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install python3-pip python3.9 && \
    apt-get install vim && \
    apt-get install git
RUN cd /
RUN git clone https://github.com/muhammedfurkan/TelethonUserBot.git
RUN cd TelethonUserBot
WORKDIR /TelethonUserBot
RUN pip3 install -U -r requirements.txt
CMD python3 -m userbot
