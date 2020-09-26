#!/bin/bash --login

rvm use ruby-{{ cookiecutter.ruby }}@{{ cookiecutter.slug }}
bundle
git init
git remote add origin git@github.com:virtuaservices/{{ cookiecutter.slug }}
git add --all .
git commit -am "Initial commit creating the service structure with the cookiecutter"