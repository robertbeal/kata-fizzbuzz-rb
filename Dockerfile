FROM ruby:alpine

WORKDIR /tmp
COPY Gemfile Gemfile
RUN bundle install

WORKDIR /data
COPY . .

ENTRYPOINT ["/usr/local/bundle/bin/rake"]
