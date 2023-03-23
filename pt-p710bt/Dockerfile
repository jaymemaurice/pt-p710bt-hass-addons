ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base:3.16
FROM $BUILD_FROM as builder
MAINTAINER jayme+noreply@jayme.ca

ENV LANG C.UTF-8

WORKDIR /root
RUN apk add --no-cache --virtual .buildDeps \
    build-base 

RUN apk add --no-cache \
    python3 \
    py3-pip \
    py3-bluez \
    py3-pillow \
    py3-appdirs \
    bluez \
    dbus \
    git \
    imagemagick \
    sed

RUN git clone https://github.com/jaymemaurice/pt-p710bt-label-maker

WORKDIR ./pt-p710bt-label-maker
RUN pip3 install packbits pypng
#RUN pip3 install -r requirements.txt
# Run script

COPY run.sh /
RUN cat /run.sh
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]