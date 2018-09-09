FROM jlesage/baseimage-gui:alpine-3.7

ENV APP_NAME="DELL iDRAC 6++"
ENV KEEP_APP_RUNNING=1

RUN apk add --no-cache openjdk7-jre feh

RUN mkdir /app && \
    chown ${USER_ID}:${GROUP_ID} /app

COPY dell.png /
COPY startapp.sh /startapp.sh

WORKDIR /app
