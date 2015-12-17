FROM antono/iiy-base

MAINTAINER Anton Vasiljev <antono.vasiljev@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 5.2.0
ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

RUN apt-get update && apt-get install -y -q --no-install-recommends \
	htop \
	vim \
	strace \
	openssh-server \
	openjdk-8-jre \
	chromium-browser \
	firefox \
	xvfb \
	&& rm -rf /var/lib/apt/lists/* \
	&& rm -rf /usr/share/doc \
	&& rm -rf /usr/share/locale \
	&& apt-get clean \
	&& . $NVM_DIR/nvm.sh \
	&& npm install -g bower gulp babel-cli babel-core \
	&& rm -rf /tmp/*

