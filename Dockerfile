FROM ruby:2.3.4
MAINTAINER john.herrlin@sigma.se

RUN apt-get update -qq && \
    apt-get install -y build-essential libmysqlclient-dev mysql-client ruby-mysql2

ADD Gemfile /learn/Gemfile
ADD Gemfile.lock /learn/Gemfile.lock
WORKDIR /learn

RUN bundle install

CMD ["bundle", "exec", "rails", "server"]
