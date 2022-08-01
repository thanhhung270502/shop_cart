# syntax=docker/dockerfile:1
FROM ruby:3.1.2

RUN apt-get update -qq && apt-get install 

RUN mkdir /test_docker
WORKDIR /test_docker

ADD Gemfile /test_docker/Gemfile
ADD Gemfile.lock /test_docker/Gemfile.lock

RUN bundle install

ADD . /test_docker
