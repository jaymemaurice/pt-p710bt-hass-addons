ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base:3.16
FROM $BUILD_FROM as builder
MAINTAINER jayme+noreply@jayme.ca

ENV LANG C.UTF-8

WORKDIR /root

RUN apk add --no-cache \
    python3 \
    bluez \
    dbus \
    libbluetooth-dev \
    libbluetooth3 \
    imagemagick \
    sed

RUN git clone https://github.com/SkoZombie/pt-p710bt-label-maker
WORKDIR ./pt-p710bt-label-maker

WORKDIR /root
COPY --from=builder /build/root/ /

# Run script
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]