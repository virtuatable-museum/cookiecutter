FROM ruby:{{ cookiecutter.ruby }}

WORKDIR /{{ cookiecutter.slug }}

COPY . /{{ cookiecutter.slug }}

RUN gem install bundler:2.1.4
RUN bundle update --bundler
RUN bundle install

CMD rackup -p 80 -o 0.0.0.0 --env production