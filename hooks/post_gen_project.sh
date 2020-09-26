#!/bin/bash --login

echo "Installing Ruby {{ cookiecutter.ruby }} if not already present on the machine."
rvm install {{ cookiecutter.ruby }} > /dev/null 2>&1

echo "Initializing the bundle and installing dependencies."
rvm use ruby-{{ cookiecutter.ruby }}@{{ cookiecutter.slug }} > /dev/null 2>&1
bundle > /dev/null 2>&1

echo "Initializing git and make the first commit (use 'git log -n 1' to see it)"
git init > /dev/null 2>&1
git remote add origin git@github.com:virtuaservices/{{ cookiecutter.slug }} > /dev/null 2>&1
git add --all . > /dev/null 2>&1
git commit -am "Initial commit creating the service structure with the cookiecutter" > /dev/null 2>&1

echo "All done ! You can now complete the application."