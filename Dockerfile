# Don't Remove Credit @Official
# Subscribe YouTube Channel For Amazing Bot @Tech_VJ
# Ask Doubt on telegram @KingVJ01

FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /MovieFilterBotRepo
WORKDIR /MovieFilterBotRepo
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
