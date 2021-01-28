FROM alpine:3.13.0

COPY health-checker .

RUN apk add openjdk11 python3 && \
    wget https://github.com/hartwigmedical/hmftools/releases/download/health-checker-v3.2/health-checker-3.2.jar && \
    mkdir /usr/local/share/health-checker/ && \
    mv health-checker-3.2.jar /usr/local/share/health-checker/ && \
    mv health-checker /usr/local/share/health-checker/ && \
    ln -s /usr/local/share/health-checker/health-checker /usr/local/bin/health-checker

