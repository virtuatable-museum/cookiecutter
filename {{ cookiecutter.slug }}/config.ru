# frozen_string_literal: true

require 'bundler'
Bundler.require(ENV['RACK_ENV'] || :development)

Virtuatable::Application.load!('{{ cookiecutter.slug }}')

run Controllers::{{ cookiecutter.glued }}
