FROM alpine

COPY fritzbox-exporter /fritzbox-exporter
RUN apk update
RUN apk --no-cache add tzdata zip ca-certificates && update-ca-certificates

EXPOSE 9133

WORKDIR "/"
CMD ["/fritzbox-exporter", "--gateway-address", "192.168.1.1"]
