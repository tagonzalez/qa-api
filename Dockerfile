FROM elixir:latest

RUN mkdir /app
WORKDIR /app
COPY . /app

RUN mix local.hex --force

RUN mix do compile
