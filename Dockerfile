FROM alpine:3.12
LABEL maintainer "Yevhen Kizin <y.kizin@kitsoft.kiev.ua>"

RUN apk add --repository https://alpine.global.ssl.fastly.net/alpine/edge/community \
    --repository https://alpine.global.ssl.fastly.net/alpine/edge/main \
    --no-cache openjdk8 libreoffice ttf-font-awesome ttf-freefont ttf-hack python3 python3-dev py3-pip\
    ffmpeg imagemagick curl ghostscript nodejs npm make g++ \
    && pip install unoconv \
    && rm -rf /var/cache/apk/* /tmp/*

RUN sed -i 's|rights="none" pattern="PDF"||' /etc/ImageMagick-7/policy.xml

RUN adduser -h /home/node -s /sbin/nologin -u 1000 -D node
