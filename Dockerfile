FROM ruby:2.5

RUN apt-get update -qq && \
    apt-get install -y nodejs postgresql-client

WORKDIR /app

COPY Gemfile Gemfile.lock /app/

RUN bundle install

COPY . /app

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

EXPOSE 3000

ENTRYPOINT ["entrypoint.sh"]
CMD ["rails", "server", "-b", "0.0.0.0"]
