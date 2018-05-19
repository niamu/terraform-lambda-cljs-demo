FROM clojure:alpine

RUN apk add --update \
    curl \
    zip \
    nodejs \
    terraform \
  && rm -rf /var/cache/apk/*

RUN curl -O https://download.clojure.org/install/linux-install-1.9.0.381.sh && \
    chmod +x linux-install-1.9.0.381.sh && \
    ./linux-install-1.9.0.381.sh

WORKDIR /app

# Apply user specific deps.edn for repo mirrors
COPY ./scripts/.clojure/deps.edn /root/.clojure/deps.edn

COPY . /app
RUN /app/scripts/build.sh

# CMD ["terraform apply -auto-approve"]
