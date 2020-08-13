# Use the Ruby 2.7.1 image from Docker Hub
# as the base image (https://hub.docker.com/_/ruby)
FROM ruby:2.6.6

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /code
WORKDIR /code
COPY Gemfile /code/Gemfile
COPY Gemfile.lock /code/Gemfile.lock
RUN bundle install
COPY . /code

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]