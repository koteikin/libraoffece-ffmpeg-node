 FROM ubuntu:xenial
 LABEL maintainer "Yevhen Kizin <y.kizin@kitsoft.kiev.ua>"

 RUN apt update \
     && apt-get install -y software-properties-common curl \
     && curl -sL https://deb.nodesource.com/setup_8.x | bash - \
     && add-apt-repository ppa:jonathonf/ffmpeg-4 \
     && apt-get update \
     && apt-get install -y wget libreoffice-draw libreoffice-writer libreoffice-calc libreoffice-impress \
     nodejs build-essential libx11-dev libxext-dev zlib1g-dev libjpeg-dev libfreetype6-dev libxml2-dev g++ gcc libevas-dev libxss-dev \
     python-dev unoconv ffmpeg imagemagick ghostscript
