FROM node
LABEL maintainer="h-otter <h-otter@outlook.jp>"

RUN DEBIAN_FRONTEND=noninteractive \
  apt-get update && \
  apt-get install -y \
    build-essential \
    chrpath \
    fonts-ipaexfont-gothic \
    git \
    libssl-dev \
    libxft-dev  \
    libfreetype6 \
    libfreetype6-dev \
    libfontconfig1 \
    libfontconfig1-dev \
   && \
  apt-get clean && \
  npm install markdown-pdf && \
  rm -rf /var/lib/apt/lists/* /tmp/*

WORKDIR /root
ENV PATH /node_modules/.bin:$PATH

ENTRYPOINT ["markdown-pdf"]
