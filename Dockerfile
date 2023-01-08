# syntax=docker/dockerfile:1

FROM ruby:3.1.3-bullseye

WORKDIR /dir_name

COPY Gemfile /dir_name/Gemfile
COPY Gemfile.lock /dir_name/Gemfile.lock
RUN bundle install

# A script to tidy things up when the container starts

COPY entrypoint.sh /usr/bin
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the server here
CMD ["rails", "server", "-b", "0.0.0.0"]
