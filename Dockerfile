# FROM node:18-buster
FROM node:18-alpine

# System Package Update
RUN apk update \
    && apk upgrade 

# System Package Update
# RUN apt-get update \
#     && apt-get upgrade -y \
#     && apt-get install netcat tcptraceroute ca-certificates jq -y

WORKDIR /opt

# Install Redis CLI
# RUN cd /tmp \
#       && wget http://download.redis.io/redis-stable.tar.gz \
#       && tar xvzf redis-stable.tar.gz \
#       && cd redis-stable \
#       && make BUILD_TLS=yes \
#       && cp src/redis-cli /usr/local/bin/ \
#       && chmod 755 /usr/local/bin/redis-cli

# Install gcloud
# RUN curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-402.0.0-linux-x86_64.tar.gz \
#   && ls -l \
#   && tar xf google-cloud-cli-402.0.0-linux-x86_64.tar.gz \
#   && ./google-cloud-sdk/install.sh -q --path-update TRUE

#Testing PR

# Create app directory
WORKDIR /usr/src/app

# Copy app source
COPY . .

# Build
RUN npm install \
  && npm run build

RUN chmod +x startup.sh

EXPOSE 3000
CMD [ "sh", "startup.sh" ]