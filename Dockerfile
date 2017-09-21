FROM ruby:2.4.1-slim

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends build-essential

COPY Gemfile Gemfile.lock .ruby-version /app/
COPY test.rb /app/
COPY vendor/cache/oj-2.17.1.gem /app/vendor/cache/
COPY vendor/cache/oj-2.17.1-x86_64-linux.gem /app/vendor/cache/

WORKDIR /app

RUN bundle install --local

CMD ["/bin/sh"]
