FROM ruby:2.4.1

RUN mkdir /myapp
WORKDIR /myapp
COPY webapp/Gemfile webapp/Gemfile.lock ./

RUN bundle install
ADD webapp /myapp

EXPOSE 3000

CMD bundle exec rails s -p 3000
