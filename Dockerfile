FROM ruby:2.3.4
MAINTAINER john.herrlin@sigma.se

RUN apt-get update
RUN apt-get install -y build-essential libmysqlclient-dev mysql-client ruby-mysql2

ADD ./blog /learn/blog
WORKDIR /learn/blog

RUN gem install bundler
RUN gem install -v 4.1.6 rails
RUN bundle install

CMD ["rails", "server"]
