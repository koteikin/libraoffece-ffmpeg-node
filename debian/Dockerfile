FROM debian:buster-slim
LABEL maintainer "Yevhen Kizin <y.kizin@kitsoft.kiev.ua>"

RUN apt-get update \
    && apt-get install curl wget software-properties-common -y \
    && curl -sL https://deb.nodesource.com/setup_lts.x | bash - \
    && apt-get update \
    && apt-get install -y libreoffice-draw libreoffice-writer libreoffice-calc libreoffice-impress \
    ffmpeg curl ghostscript unoconv python-dev nodejs build-essential libx11-dev \
    libxext-dev zlib1g-dev libjpeg-dev libfreetype6-dev libxml2-dev 

RUN wget -O /tmp/ImageMagick.tar.gz  http://www.imagemagick.org/download/ImageMagick.tar.gz && cd /tmp  \
    && tar -xzvf ImageMagick.tar.gz && cd ./ImageMagick-7.0.10-29 && ./configure && make && make install

#RUN sed -i 's|rights="none" pattern="PDF"||' /etc/ImageMagick-7/policy.xml
