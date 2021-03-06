FROM ruby:2.7.1
WORKDIR /app
COPY Gemfile /app
RUN /usr/local/bin/bundle install

ARG CLIENT_ID
ARG CLIENT_SECRET
ARG REFRESH_TOKEN

ENV CLIENT_ID="$CLIENT_ID"
ENV CLIENT_SECRET="$CLIENT_SECRET"
ENV REFRESH_TOKEN="$REFRESH_TOKEN"
