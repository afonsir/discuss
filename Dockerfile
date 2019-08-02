FROM elixir:1.8.2-alpine

LABEL maintainer="afonsir17@gmail.com"

ENV PHOENIX_URL "https://github.com/phoenixframework/archives/raw/master/phoenix_new-1.2.5.ez"

RUN mkdir -p /app

WORKDIR /app

RUN apk update && \
    apk add nodejs npm && \
    rm -rf /var/cache/apk/*

RUN mix archive.install --force $PHOENIX_URL && \
    mix local.hex --force && \
    mix local.rebar --force

COPY mix.exs mix.lock package.json package-lock.json ./

RUN mix deps.get && \
    npm install

EXPOSE 4000

CMD [ "mix", "phoenix.server" ]