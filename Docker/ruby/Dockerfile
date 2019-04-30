FROM ruby:2.5.0
# FROM alpine:latest

# Set correct environment variables.
ENV HOME /root
USER root

# Update ruby && Install packages for building ruby
RUN apt-get update && apt-get -y upgrade \
    && \
    apt-get install -y build-essential curl git-core \
    zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev \
    default-libmysqlclient-dev \
    imagemagick gsfonts nodejs \
    && \
    apt-get clean
# libsqlite3-dev sqlite3 libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

# Install packages for building ruby
# RUN apt-get install -y build-essential curl git-core zlib1g-dev\
#     libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev \
#     libsqlite3-dev sqlite3 libxslt1-dev libcurl4-openssl-dev \
#     python-software-properties libffi-dev libmysqlclient-dev \
#     imagemagick gsfonts nodejs \
#     && apt-get clean

# Processing project file
RUN mkdir /app
WORKDIR /app
COPY app/Gemfile /app/Gemfile
COPY app/Gemfile.lock /app/Gemfile.lock
RUN yes | gem update \
    && gem install bundler -v $(tail -n 1 Gemfile.lock | tr -d ' ') \
    && bundle install \
    && echo "export RAILS_ENV=production" >> /root/.bashrc
ENV RAILS_ENV production
COPY app/. /app

# Init configurations
COPY config/. /app/config
RUN bundle exec rake assets:precompile
# CMD ["/bin/bash"]

# COPY entrypoint.sh /usr/bin/
# RUN chmod +x /usr/bin/entrypoint.sh
# ENTRYPOINT ["entrypoint.sh"]
# ENV RAILS_ENV development
EXPOSE 3000
CMD ["bin/rails", "server", "-b", "0.0.0.0"]
# CMD eval "$(rbenv init -)" && bin/rails server -b 0.0.0.0

# TODO nginx with passenger
# TODO EXPOSE PORT
# TODO if this images for daemon
# TODO assets:precompile can exec after continer start
