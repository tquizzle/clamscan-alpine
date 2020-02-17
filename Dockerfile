FROM alpine:latest
LABEL maintainer="Travis Quinnelly <tquinnelly@gmail.com>"

RUN apk update && apk add clamav=0.101.5-r0

ENV SCANDIR=/scan
COPY scan.sh /scan.sh
ENTRYPOINT [ "sh", "/scan.sh" ]
