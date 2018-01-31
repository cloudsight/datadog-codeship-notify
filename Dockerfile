FROM alpine

RUN apk add --no-cache curl

ADD notify-datadog-script.sh /

ENTRYPOINT ["/notify-datadog-script.sh"]
