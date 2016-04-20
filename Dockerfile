FROM ruby:2.2.3

WORKDIR /tmp
COPY Gemfile Gemfile
RUN bundle install

WORKDIR /data
COPY . .

ENTRYPOINT ["/usr/local/bundle/bin/rake"]
