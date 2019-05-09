FROM node:8

RUN apt-get update && apt-get install -y libnss3-dev libxss1 libappindicator1 libindicator7
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
    && apt-get install -y ./google-chrome*.deb \
    && rm ./google-chrome*.deb
