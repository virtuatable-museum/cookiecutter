# {{ cookiecutter.plural }} service

## Installation

### Prerequisites

To install the application, you will need :
- Ruby Version Manager (RVM)
- Ruby {{ cookiecutter.ruby }} installed with said RVM
- MongoDB 4.4+

### How to install

If you have created the application with our dedicated cookiecutter template, there is nothing left to do, if you didn't, you can execute these commands inside the folder where you cloned your application :

```bash
rvm use {{ cookiecutter.ruby }}@{{ cookiecutter.slug }}
bundle install
```

## Run the application

To run the application, type the following command in the folder where you cloned the project, after following the "How to install" above :

```
rackup -o 0.0.0.0 -p 9292
```

## Run the tests

### Run unit tests

Run the following command in the folder where you cloned the project :

```bash
rspec
```

### Run rubocop checks

Run the following command in the folder where you cloned the project :

```bash
rubocop
```