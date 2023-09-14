FROM alpine:3.15
LABEL org.opencontainers.image.source="https://github.com/lotusnetwork/airgo-docker"
RUN apk update && apk add --no-cache bash curl supervisor git mailcap
RUN mkdir /backend
COPY config/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
WORKDIR /backend
CMD /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
