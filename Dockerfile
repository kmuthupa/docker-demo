FROM ruby:2.2
LABEL version="1.0"
MAINTAINER karthik.muthupalaniappan@spr.com
RUN echo 'This is a simple ruby app'

WORKDIR /home
COPY Gemfile /home
COPY foo.rb /home
RUN gem install bundler
RUN bundle
CMD ruby foo.rb
