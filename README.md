# PlotEat

PlotEat is an meal planing shopping list app

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

In order to get the platform running, you need the following:

* Rails version 5.2.3
* Ruby version 2.5.2
* Bundler

### Installation

In order to run the platform after cloning, you need to run bundler using

```
bundle install
```

Database needs to be created, migrated and seed loaded using the following

```
rails db:create db:migrate db:seed
```

## Running the tests

PlorEat uses Cucumber for acceptance test and Rspec for unit test.

To run the tests individually, use the following for acceptance test

```
bundle exec cucumber
```

and for unit test

```
bundle exec rspec
```

To run both  tests in one command, run

```
bundle exec rake
```

## Deployment

The host should be able to run the prerequisted servers.
Deployment has been implemented successfully on Heroku.


## Author

Agnes Konráðsdóttir

## License
