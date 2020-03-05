FROM node:12

RUN apt-get update && apt-get install -y libnss3-dev libxss1 libappindicator1 libindicator7
RUN wget http://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_80.0.3987.132-1_amd64.deb \
    && apt-get install -y ./google-chrome*.deb \
    && rm ./google-chrome*.deb
